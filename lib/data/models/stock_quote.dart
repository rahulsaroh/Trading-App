import 'package:json_annotation/json_annotation.dart';

part 'stock_quote.g.dart';

@JsonSerializable()
class StockQuote {
  final String symbol;
  final String name;
  final double ltp;
  final double open;
  final double high;
  final double low;
  final double previousClose;
  final double change;
  final double changePct;
  final double volume;
  final double? week52High;
  final double? week52Low;
  final double? marketCap;
  final double? pe;
  final bool isIndex;
  final DateTime? lastUpdateTime;

  StockQuote({
    required this.symbol,
    required this.name,
    required this.ltp,
    required this.open,
    required this.high,
    required this.low,
    required this.previousClose,
    required this.change,
    required this.changePct,
    this.volume = 0,
    this.week52High,
    this.week52Low,
    this.marketCap,
    this.pe,
    this.isIndex = false,
    this.lastUpdateTime,
  });

  factory StockQuote.fromJson(Map<String, dynamic> json) => _$StockQuoteFromJson(json);
  Map<String, dynamic> toJson() => _$StockQuoteToJson(this);

  factory StockQuote.fromYahooJson(Map<String, dynamic> json, {String? displayName}) {
    final ltp = (json['regularMarketPrice'] as num?)?.toDouble() ?? 0;
    final prevClose = (json['regularMarketPreviousClose'] as num?)?.toDouble() ?? ltp;
    return StockQuote(
      symbol: displayName ?? (json['symbol'] as String).replaceAll('.NS', ''),
      name: displayName ?? (json['shortName'] as String? ?? json['symbol'] as String),
      ltp: ltp,
      open: (json['regularMarketOpen'] as num?)?.toDouble() ?? ltp,
      high: (json['regularMarketDayHigh'] as num?)?.toDouble() ?? ltp,
      low: (json['regularMarketDayLow'] as num?)?.toDouble() ?? ltp,
      previousClose: prevClose,
      change: (json['regularMarketChange'] as num?)?.toDouble() ?? (ltp - prevClose),
      changePct: (json['regularMarketChangePercent'] as num?)?.toDouble() ?? 0,
      volume: (json['regularMarketVolume'] as num?)?.toDouble() ?? 0,
      week52High: (json['fiftyTwoWeekHigh'] as num?)?.toDouble(),
      week52Low: (json['fiftyTwoWeekLow'] as num?)?.toDouble(),
      marketCap: (json['marketCap'] as num?)?.toDouble(),
      pe: (json['trailingPE'] as num?)?.toDouble(),
      isIndex: (json['quoteType'] as String?) == 'INDEX',
      lastUpdateTime: DateTime.now(),
    );
  }

  factory StockQuote.fromNseJson(Map<String, dynamic> json) {
    final ltp = (json['lastPrice'] as num?)?.toDouble() ?? (json['ltp'] as num?)?.toDouble() ?? 0;
    return StockQuote(
      symbol: json['symbol'] as String? ?? '',
      name: json['meta']?['companyName'] as String? ?? json['symbol'] as String? ?? '',
      ltp: ltp,
      open: (json['open'] as num?)?.toDouble() ?? ltp,
      high: (json['dayHigh'] as num?)?.toDouble() ?? ltp,
      low: (json['dayLow'] as num?)?.toDouble() ?? ltp,
      previousClose: (json['previousClose'] as num?)?.toDouble() ?? ltp,
      change: (json['change'] as num?)?.toDouble() ?? 0,
      changePct: (json['pChange'] as num?)?.toDouble() ?? 0,
      volume: (json['totalTradedVolume'] as num?)?.toDouble() ?? 0,
      week52High: (json['52wHigh'] as num?)?.toDouble(),
      week52Low: (json['52wLow'] as num?)?.toDouble(),
      isIndex: false,
      lastUpdateTime: DateTime.now(),
    );
  }

  factory StockQuote.fromNseEquityJson(Map<String, dynamic> json) {
    final priceInfo = json['priceInfo'] as Map<String, dynamic>? ?? {};
    final metadata = json['info'] as Map<String, dynamic>? ?? {};
    final ltp = (priceInfo['lastPrice'] as num?)?.toDouble() ?? 0;
    return StockQuote(
      symbol: metadata['symbol'] as String? ?? '',
      name: metadata['companyName'] as String? ?? '',
      ltp: ltp,
      open: (priceInfo['open'] as num?)?.toDouble() ?? ltp,
      high: (priceInfo['intraDayHighLow']?['max'] as num?)?.toDouble() ?? ltp,
      low: (priceInfo['intraDayHighLow']?['min'] as num?)?.toDouble() ?? ltp,
      previousClose: (priceInfo['previousClose'] as num?)?.toDouble() ?? ltp,
      change: (priceInfo['change'] as num?)?.toDouble() ?? 0,
      changePct: (priceInfo['pChange'] as num?)?.toDouble() ?? 0,
      volume: 0,
      week52High: (priceInfo['weekHighLow']?['max'] as num?)?.toDouble(),
      week52Low: (priceInfo['weekHighLow']?['min'] as num?)?.toDouble(),
      isIndex: false,
      lastUpdateTime: DateTime.now(),
    );
  }
}
