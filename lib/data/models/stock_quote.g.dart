// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockQuote _$StockQuoteFromJson(Map<String, dynamic> json) => StockQuote(
  symbol: json['symbol'] as String,
  ltp: (json['lastPrice'] as num).toDouble(),
  open: (json['open'] as num).toDouble(),
  high: (json['high'] as num).toDouble(),
  low: (json['low'] as num).toDouble(),
  close: (json['close'] as num).toDouble(),
  change: (json['change'] as num).toDouble(),
  changePct: (json['pChange'] as num).toDouble(),
  volume: (json['volume'] as num?)?.toDouble() ?? 0,
  marketCap: (json['marketCap'] as num?)?.toDouble(),
  pe: (json['pe'] as num?)?.toDouble(),
  week52High: (json['dayHigh'] as num?)?.toDouble(),
  week52Low: (json['dayLow'] as num?)?.toDouble(),
  lastUpdateTime: json['lastUpdateTime'] == null
      ? null
      : DateTime.parse(json['lastUpdateTime'] as String),
);

Map<String, dynamic> _$StockQuoteToJson(StockQuote instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'lastPrice': instance.ltp,
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'close': instance.close,
      'change': instance.change,
      'pChange': instance.changePct,
      'volume': instance.volume,
      'marketCap': instance.marketCap,
      'pe': instance.pe,
      'dayHigh': instance.week52High,
      'dayLow': instance.week52Low,
      'lastUpdateTime': instance.lastUpdateTime?.toIso8601String(),
    };
