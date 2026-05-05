import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../models/stock_quote.dart';
import '../models/candle.dart';
import '../models/option_chain.dart';
import '../datasources/nse_api_client.dart';

class MarketDataRepository {
  final NseApiClient _nseClient = NseApiClient();
  final Dio _fallbackDio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 8),
    receiveTimeout: const Duration(seconds: 12),
    headers: {
      'User-Agent': 'Mozilla/5.0 (Linux; Android 13) '
          'AppleWebKit/537.36 Chrome/120.0.0.0',
      'Accept': 'application/json',
    },
  ));

  // ============================================================
  // NIFTY 50 INDEX + STOCKS — 3-layer fallback
  // ============================================================
  Future<List<StockQuote>> fetchNifty50Stocks() async {
    // LAYER 1: NSE Direct API
    try {
      final response = await _nseClient.nseGet(
        'equity-stockIndices?index=NIFTY%2050'
      );
      if (response != null && response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final stocks = (data['data'] as List)
            .map((item) => StockQuote.fromNseJson(item))
            .toList();
        if (stocks.isNotEmpty) {
          debugPrint('[Market] NSE returned ${stocks.length} Nifty50 stocks');
          return stocks;
        }
      }
    } catch (e) {
      debugPrint('[Market] NSE Nifty50 failed: $e');
    }

    // LAYER 2: Yahoo Finance API (very reliable)
    try {
      debugPrint('[Market] Trying Yahoo Finance for Nifty50...');
      return await _fetchNifty50FromYahoo();
    } catch (e) {
      debugPrint('[Market] Yahoo Nifty50 failed: $e');
    }

    // LAYER 3: Stooq API
    try {
      debugPrint('[Market] Trying Stooq for index data...');
      return await _fetchIndicesFromStooq();
    } catch (e) {
      debugPrint('[Market] Stooq failed: $e');
    }

    debugPrint('[Market] All sources failed, returning empty');
    return [];
  }

  // ============================================================
  // NIFTY / BANKNIFTY / SENSEX INDEX QUOTES — Yahoo Finance
  // ============================================================
  Future<Map<String, StockQuote>> fetchIndexQuotes() async {
    final indices = {
      'NIFTY 50': '^NSEI',
      'BANKNIFTY': '^NSEBANK',
      'SENSEX': '^BSESN',
      'NIFTY IT': '^CNXIT',
      'NIFTY MIDCAP': '^NSEMDCP50',
    };

    final Map<String, StockQuote> result = {};
    
    // Yahoo Finance batch quote — all indices in ONE call
    final symbols = indices.values.join(',');
    try {
      final response = await _fallbackDio.get(
        'https://query1.finance.yahoo.com/v7/finance/quote',
        queryParameters: {
          'symbols': symbols,
          'fields': 'symbol,shortName,regularMarketPrice,'
              'regularMarketChange,regularMarketChangePercent,'
              'regularMarketPreviousClose,regularMarketOpen,'
              'regularMarketDayHigh,regularMarketDayLow,'
              'regularMarketVolume,fiftyTwoWeekHigh,fiftyTwoWeekLow',
        },
      );

      if (response.statusCode == 200) {
        final quotes = response.data['quoteResponse']['result'] as List;
        for (final q in quotes) {
          final yahooSymbol = q['symbol'] as String;
          final name = indices.entries
              .firstWhere((e) => e.value == yahooSymbol,
                  orElse: () => MapEntry(yahooSymbol, yahooSymbol))
              .key;
          result[name] = StockQuote.fromYahooJson(q, displayName: name);
        }
        debugPrint('[Market] Yahoo returned ${result.length} index quotes');
      }
    } catch (e) {
      debugPrint('[Market] Yahoo index fetch failed: $e');
    }

    // Fallback individual NSE API calls for any missing
    for (final entry in indices.entries) {
      if (!result.containsKey(entry.key)) {
        try {
          final quote = await _fetchIndexFromNse(
            entry.key == 'NIFTY 50' ? 'NIFTY%2050' : 
            entry.key == 'BANKNIFTY' ? 'NIFTY%20BANK' : entry.key
          );
          if (quote != null) result[entry.key] = quote;
        } catch (_) {}
      }
    }

    return result;
  }

  // ============================================================
  // SINGLE STOCK QUOTE — NSE first, Yahoo fallback
  // ============================================================
  Future<StockQuote?> fetchStockQuote(String symbol) async {
    // NSE equity quote
    try {
      final response = await _nseClient.nseGet(
        'quote-equity?symbol=${Uri.encodeComponent(symbol)}'
      );
      if (response?.statusCode == 200) {
        return StockQuote.fromNseEquityJson(
            response!.data as Map<String, dynamic>);
      }
    } catch (e) {
      debugPrint('[Market] NSE stock quote failed for $symbol: $e');
    }

    // Yahoo Finance fallback
    try {
      final yahooSymbol = '$symbol.NS'; // NSE suffix
      final response = await _fallbackDio.get(
        'https://query1.finance.yahoo.com/v7/finance/quote',
        queryParameters: {'symbols': yahooSymbol},
      );
      if (response.statusCode == 200) {
        final quotes = response.data['quoteResponse']['result'] as List;
        if (quotes.isNotEmpty) {
          return StockQuote.fromYahooJson(
              quotes.first as Map<String, dynamic>);
        }
      }
    } catch (e) {
      debugPrint('[Market] Yahoo stock quote failed for $symbol: $e');
    }

    return null;
  }

  // ============================================================
  // INTRADAY CHART DATA — Yahoo Finance (most reliable for charts)
  // ============================================================
  Future<List<Candle>> fetchIntradayData(String symbol, 
      {String interval = '5m'}) async {
    // Use Yahoo Finance for intraday — it's far more reliable than NSE
    final yahooSymbol = symbol.startsWith('^') 
        ? symbol  // Already an index symbol like ^NSEI
        : '$symbol.NS';
    
    try {
      final response = await _fallbackDio.get(
        'https://query1.finance.yahoo.com/v8/finance/chart/$yahooSymbol',
        queryParameters: {
          'interval': interval,   // '1m', '5m', '15m', '30m', '60m'
          'range': '1d',          // Today's data
          'includePrePost': false,
          'events': 'div,splits',
          'useYfid': true,
          'corsDomain': 'finance.yahoo.com',
        },
      );

      if (response.statusCode == 200) {
        final chart = response.data['chart']['result'][0];
        final timestamps = (chart['timestamp'] as List).cast<int>();
        final ohlcv = chart['indicators'];
        final quotes = ohlcv['quote'][0];

        final opens = (quotes['open'] as List).cast<double?>();
        final highs = (quotes['high'] as List).cast<double?>();
        final lows = (quotes['low'] as List).cast<double?>();
        final closes = (quotes['close'] as List).cast<double?>();
        final volumes = (quotes['volume'] as List).cast<int?>();

        final candles = <Candle>[];
        for (int i = 0; i < timestamps.length; i++) {
          if (closes[i] == null) continue; // Skip null candles
          candles.add(Candle(
            timestamp: DateTime.fromMillisecondsSinceEpoch(
                timestamps[i] * 1000),
            open: opens[i] ?? closes[i]!,
            high: highs[i] ?? closes[i]!,
            low: lows[i] ?? closes[i]!,
            close: closes[i]!,
            volume: (volumes[i] ?? 0).toDouble(),
          ));
        }
        debugPrint('[Market] Intraday: ${candles.length} candles for $symbol');
        return candles;
      }
    } catch (e) {
      debugPrint('[Market] Intraday fetch failed for $symbol: $e');
    }
    return [];
  }

  // Historical OHLCV for 1W/1M/3M/6M/1Y charts
  Future<List<Candle>> fetchHistoricalData(String symbol,
      {required String range, String interval = '1d'}) async {
    final yahooSymbol = symbol.startsWith('^') 
        ? symbol : '$symbol.NS';
    try {
      final response = await _fallbackDio.get(
        'https://query1.finance.yahoo.com/v8/finance/chart/$yahooSymbol',
        queryParameters: {
          'interval': interval,
          'range': range,  // '5d', '1mo', '3mo', '6mo', '1y'
          'includePrePost': false,
        },
      );

      if (response.statusCode == 200) {
        return _parseYahooCandles(response.data);
      }
    } catch (e) {
      debugPrint('[Market] Historical fetch failed: $e');
    }
    return [];
  }

  List<Candle> _parseYahooCandles(Map<String, dynamic> data) {
    try {
      final result = data['chart']['result'][0];
      final timestamps = (result['timestamp'] as List).cast<int>();
      final quotes = result['indicators']['quote'][0];
      final candles = <Candle>[];
      for (int i = 0; i < timestamps.length; i++) {
        final close = (quotes['close'] as List)[i];
        if (close == null) continue;
        candles.add(Candle(
          timestamp: DateTime.fromMillisecondsSinceEpoch(
              timestamps[i] * 1000),
          open: ((quotes['open'] as List)[i] ?? close).toDouble(),
          high: ((quotes['high'] as List)[i] ?? close).toDouble(),
          low: ((quotes['low'] as List)[i] ?? close).toDouble(),
          close: close.toDouble(),
          volume: ((quotes['volume'] as List)[i] ?? 0).toDouble(),
        ));
      }
      return candles;
    } catch (e) {
      return [];
    }
  }

  // Helper: fetch index quote from NSE
  Future<StockQuote?> _fetchIndexFromNse(String indexParam) async {
    final response = await _nseClient.nseGet(
        'equity-stockIndices?index=$indexParam');
    if (response?.statusCode == 200) {
      final data = response!.data as Map<String, dynamic>;
      final metadata = data['metadata'];
      if (metadata != null) {
        return StockQuote(
          symbol: metadata['indexName'] ?? indexParam,
          name: metadata['indexName'] ?? indexParam,
          ltp: (metadata['last'] as num?)?.toDouble() ?? 0,
          open: (metadata['open'] as num?)?.toDouble() ?? 0,
          high: (metadata['high'] as num?)?.toDouble() ?? 0,
          low: (metadata['low'] as num?)?.toDouble() ?? 0,
          previousClose: (metadata['previousClose'] as num?)?.toDouble() ?? 0,
          change: (metadata['change'] as num?)?.toDouble() ?? 0,
          changePct: (metadata['percentChange'] as num?)?.toDouble() ?? 0,
          volume: 0,
          isIndex: true,
        );
      }
    }
    return null;
  }

  // Yahoo Finance bulk Nifty50 fetch
  Future<List<StockQuote>> _fetchNifty50FromYahoo() async {
    // Nifty 50 constituent Yahoo symbols
    const nifty50Symbols = [
      'RELIANCE.NS', 'TCS.NS', 'HDFCBANK.NS', 'BHARTIARTL.NS',
      'ICICIBANK.NS', 'INFOSYS.NS', 'SBIN.NS', 'HINDUNILVR.NS',
      'ITC.NS', 'LT.NS', 'KOTAKBANK.NS', 'WIPRO.NS',
      'HCLTECH.NS', 'AXISBANK.NS', 'ASIANPAINT.NS', 'MARUTI.NS',
      'SUNPHARMA.NS', 'TITAN.NS', 'BAJFINANCE.NS', 'NTPC.NS',
      'POWERGRID.NS', 'ULTRACEMCO.NS', 'BAJAJFINSV.NS', 'ONGC.NS',
      'M&M.NS', 'JSWSTEEL.NS', 'TATASTEEL.NS', 'ADANIENT.NS',
      'COALINDIA.NS', 'NESTLEIND.NS', 'DRREDDY.NS', 'CIPLA.NS',
      'DIVISLAB.NS', 'BRITANNIA.NS', 'EICHERMOT.NS', 'BPCL.NS',
      'GRASIM.NS', 'HEROMOTOCO.NS', 'APOLLOHOSP.NS', 'TECHM.NS',
      'INDUSINDBK.NS', 'TATAMOTORS.NS', 'ADANIPORTS.NS', 'SBILIFE.NS',
      'HDFCLIFE.NS', 'TATACONSUM.NS', 'BAJAJ-AUTO.NS', 'SHRIRAMFIN.NS',
      'BEL.NS', 'TRENT.NS'
    ];

    // Batch in groups of 10 to avoid URL length limits
    final List<StockQuote> allStocks = [];
    for (int i = 0; i < nifty50Symbols.length; i += 10) {
      final batch = nifty50Symbols.sublist(
          i, i + 10 > nifty50Symbols.length ? nifty50Symbols.length : i + 10);
      try {
        final response = await _fallbackDio.get(
          'https://query1.finance.yahoo.com/v7/finance/quote',
          queryParameters: {'symbols': batch.join(',')},
        );
        if (response.statusCode == 200) {
          final quotes = response.data['quoteResponse']['result'] as List;
          allStocks.addAll(
            quotes.map((q) => StockQuote.fromYahooJson(
                q as Map<String, dynamic>)).toList()
          );
        }
        await Future.delayed(const Duration(milliseconds: 200));
      } catch (e) {
        debugPrint('[Market] Yahoo batch $i failed: $e');
      }
    }
    return allStocks;
  }

  Future<List<StockQuote>> _fetchIndicesFromStooq() async {
    // Stooq symbols for Indian indices
    final stooqMap = {
      '^nsei': 'NIFTY 50',
      '^nsebank': 'BANKNIFTY',
      '^bsesn': 'SENSEX',
    };
    final List<StockQuote> result = [];
    for (final entry in stooqMap.entries) {
      try {
        final res = await _fallbackDio.get(
          'https://stooq.com/q/l/?s=${entry.key}&f=sd2t2ohlcvn&h&e=csv',
        );
        if (res.statusCode == 200) {
          final lines = (res.data as String).split('\n');
          if (lines.length > 1) {
            final cols = lines[1].split(',');
            final close = double.tryParse(cols[5]) ?? 0.0;
            final open = double.tryParse(cols[3]) ?? close;
            result.add(StockQuote(
              symbol: entry.value,
              name: entry.value,
              ltp: close,
              open: open,
              high: double.tryParse(cols[4]) ?? close,
              low: double.tryParse(cols[5]) ?? close,
              previousClose: open,
              change: close - open,
              changePct: open > 0 ? ((close - open) / open) * 100 : 0.0,
              volume: double.tryParse(cols[6].trim()) ?? 0.0,
              isIndex: true,
            ));
          }
        }
      } catch (e) {
        debugPrint('[Market] Stooq failed for ${entry.key}: $e');
      }
    }
    return result;
  }

  Future<OptionChain> fetchOptionChain(String symbol) async {
    final response = await _nseClient.nseGet(
        'option-chain-indices?symbol=${Uri.encodeComponent(symbol)}');
    
    if (response == null || response.statusCode != 200) {
      throw Exception('Failed to fetch option chain');
    }

    final data = response.data['records'];
    final underlyingValue = (data['underlyingValue'] as num).toDouble();
    final expiryDates = List<String>.from(data['expiryDates']);
    final strikePrices = List<double>.from(data['strikePrices'].map((s) => (s as num).toDouble()));
    
    final List allData = data['data'];
    final currentExpiry = expiryDates.first;
    
    final calls = allData
        .where((d) => d['expiryDate'] == currentExpiry && d['CE'] != null)
        .map((d) => OptionContract.fromJson(d['CE']))
        .toList();

    final puts = allData
        .where((d) => d['expiryDate'] == currentExpiry && d['PE'] != null)
        .map((d) => OptionContract.fromJson(d['PE']))
        .toList();

    return OptionChain(
      symbol: symbol,
      expiry: currentExpiry,
      underlyingValue: underlyingValue,
      strikePrices: strikePrices,
      calls: calls,
      puts: puts,
    );
  }
}
