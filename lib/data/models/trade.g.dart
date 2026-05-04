// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppTrade _$AppTradeFromJson(Map<String, dynamic> json) => _AppTrade(
  id: json['id'] as String,
  orderId: json['orderId'] as String,
  symbol: json['symbol'] as String,
  side: $enumDecode(_$OrderSideEnumMap, json['side']),
  price: (json['price'] as num).toDouble(),
  quantity: (json['quantity'] as num).toInt(),
  value: (json['value'] as num).toDouble(),
  brokerage: (json['brokerage'] as num).toDouble(),
  gst: (json['gst'] as num).toDouble(),
  stampDuty: (json['stampDuty'] as num).toDouble(),
  sebiFee: (json['sebiFee'] as num).toDouble(),
  totalCharges: (json['totalCharges'] as num).toDouble(),
  executedAt: DateTime.parse(json['executedAt'] as String),
);

Map<String, dynamic> _$AppTradeToJson(_AppTrade instance) => <String, dynamic>{
  'id': instance.id,
  'orderId': instance.orderId,
  'symbol': instance.symbol,
  'side': _$OrderSideEnumMap[instance.side]!,
  'price': instance.price,
  'quantity': instance.quantity,
  'value': instance.value,
  'brokerage': instance.brokerage,
  'gst': instance.gst,
  'stampDuty': instance.stampDuty,
  'sebiFee': instance.sebiFee,
  'totalCharges': instance.totalCharges,
  'executedAt': instance.executedAt.toIso8601String(),
};

const _$OrderSideEnumMap = {OrderSide.buy: 'buy', OrderSide.sell: 'sell'};
