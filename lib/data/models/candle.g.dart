// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Candle _$CandleFromJson(Map<String, dynamic> json) => Candle(
  open: (json['open'] as num).toDouble(),
  high: (json['high'] as num).toDouble(),
  low: (json['low'] as num).toDouble(),
  close: (json['close'] as num).toDouble(),
  volume: (json['volume'] as num).toDouble(),
  timestamp: DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$CandleToJson(Candle instance) => <String, dynamic>{
  'open': instance.open,
  'high': instance.high,
  'low': instance.low,
  'close': instance.close,
  'volume': instance.volume,
  'timestamp': instance.timestamp.toIso8601String(),
};
