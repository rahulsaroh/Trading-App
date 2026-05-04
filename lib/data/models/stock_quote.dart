import 'package:json_annotation/json_annotation.dart';

part 'stock_quote.g.dart';

@JsonSerializable()
class StockQuote {
  final String symbol;
  @JsonKey(name: 'lastPrice')
  final double ltp;
  final double open;
  final double high;
  final double low;
  final double close;
  final double change;
  @JsonKey(name: 'pChange')
  final double changePct;
  @JsonKey(defaultValue: 0)
  final double volume;
  final double? marketCap;
  final double? pe;
  @JsonKey(name: 'dayHigh')
  final double? week52High;
  @JsonKey(name: 'dayLow')
  final double? week52Low;
  final DateTime? lastUpdateTime;

  StockQuote({
    required this.symbol,
    required this.ltp,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    required this.change,
    required this.changePct,
    this.volume = 0,
    this.marketCap,
    this.pe,
    this.week52High,
    this.week52Low,
    this.lastUpdateTime,
  });

  factory StockQuote.fromJson(Map<String, dynamic> json) => _$StockQuoteFromJson(json);
  Map<String, dynamic> toJson() => _$StockQuoteToJson(this);
}
