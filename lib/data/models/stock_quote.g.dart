// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockQuote _$StockQuoteFromJson(Map<String, dynamic> json) => StockQuote(
  symbol: json['symbol'] as String,
  name: json['name'] as String,
  ltp: (json['ltp'] as num).toDouble(),
  open: (json['open'] as num).toDouble(),
  high: (json['high'] as num).toDouble(),
  low: (json['low'] as num).toDouble(),
  previousClose: (json['previousClose'] as num).toDouble(),
  change: (json['change'] as num).toDouble(),
  changePct: (json['changePct'] as num).toDouble(),
  volume: (json['volume'] as num?)?.toDouble() ?? 0,
  week52High: (json['week52High'] as num?)?.toDouble(),
  week52Low: (json['week52Low'] as num?)?.toDouble(),
  marketCap: (json['marketCap'] as num?)?.toDouble(),
  pe: (json['pe'] as num?)?.toDouble(),
  isIndex: json['isIndex'] as bool? ?? false,
  lastUpdateTime: json['lastUpdateTime'] == null
      ? null
      : DateTime.parse(json['lastUpdateTime'] as String),
);

Map<String, dynamic> _$StockQuoteToJson(StockQuote instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'ltp': instance.ltp,
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'previousClose': instance.previousClose,
      'change': instance.change,
      'changePct': instance.changePct,
      'volume': instance.volume,
      'week52High': instance.week52High,
      'week52Low': instance.week52Low,
      'marketCap': instance.marketCap,
      'pe': instance.pe,
      'isIndex': instance.isIndex,
      'lastUpdateTime': instance.lastUpdateTime?.toIso8601String(),
    };
