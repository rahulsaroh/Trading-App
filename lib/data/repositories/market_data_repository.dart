import 'package:dio/dio.dart';
import '../datasources/remote/nse_api_client.dart';
import '../models/stock_quote.dart';
import '../models/option_chain.dart';
import '../models/candle.dart';

class MarketDataRepository {
  final NseApiClient _apiClient;

  MarketDataRepository(this._apiClient);

  Future<List<StockQuote>> fetchNifty50Stocks() async {
    try {
      final response = await _apiClient.get('/equity-stockIndices', queryParameters: {'index': 'NIFTY 50'});
      final List data = response.data['data'];
      return data.map((json) => StockQuote.fromJson(json)).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<StockQuote> fetchStockQuote(String symbol) async {
    final response = await _apiClient.get('/quote-equity', queryParameters: {'symbol': symbol});
    return StockQuote.fromJson(response.data['priceInfo']);
  }

  Future<OptionChain> fetchOptionChain(String symbol) async {
    final response = await _apiClient.get('/option-chain-indices', queryParameters: {'symbol': symbol});
    
    final data = response.data['records'];
    final underlyingValue = data['underlyingValue'].toDouble();
    final expiryDates = List<String>.from(data['expiryDates']);
    final strikePrices = List<double>.from(data['strikePrices'].map((s) => s.toDouble()));
    
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

  Future<List<Candle>> getHistoricalOHLC(String symbol, {String interval = '1d', String range = '1mo'}) async {
    final dio = Dio();
    // Yahoo Finance uses ^NSEI for Nifty, but for stocks it needs .NS suffix
    final yahooSymbol = symbol == 'NIFTY 50' ? '^NSEI' : '$symbol.NS';
    
    try {
      final response = await dio.get(
        'https://query1.finance.yahoo.com/v8/finance/chart/$yahooSymbol',
        queryParameters: {'interval': interval, 'range': range},
      );
      
      final result = response.data['chart']['result'][0];
      final timestamps = List<int>.from(result['timestamp']);
      final quotes = result['indicators']['quote'][0];
      
      return List.generate(timestamps.length, (i) {
        return Candle(
          open: (quotes['open'][i] ?? quotes['close'][i])?.toDouble() ?? 0.0,
          high: (quotes['high'][i] ?? quotes['close'][i])?.toDouble() ?? 0.0,
          low: (quotes['low'][i] ?? quotes['close'][i])?.toDouble() ?? 0.0,
          close: (quotes['close'][i])?.toDouble() ?? 0.0,
          volume: (quotes['volume'][i])?.toDouble() ?? 0.0,
          timestamp: DateTime.fromMillisecondsSinceEpoch(timestamps[i] * 1000),
        );
      }).where((c) => c.close > 0).toList();
    } catch (e) {
      return [];
    }
  }
}
