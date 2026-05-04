// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppOrder _$AppOrderFromJson(Map<String, dynamic> json) => _AppOrder(
  id: json['id'] as String,
  symbol: json['symbol'] as String,
  side: $enumDecode(_$OrderSideEnumMap, json['side']),
  orderType: $enumDecode(_$OrderTypeEnumMap, json['orderType']),
  price: (json['price'] as num).toDouble(),
  quantity: (json['quantity'] as num).toInt(),
  filledQuantity: (json['filledQuantity'] as num).toDouble(),
  averagePrice: (json['averagePrice'] as num).toDouble(),
  status: $enumDecode(_$OrderStatusEnumMap, json['status']),
  productType: $enumDecode(_$ProductTypeEnumMap, json['productType']),
  stopLossPrice: (json['stopLossPrice'] as num?)?.toDouble(),
  targetPrice: (json['targetPrice'] as num?)?.toDouble(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  executedAt: json['executedAt'] == null
      ? null
      : DateTime.parse(json['executedAt'] as String),
  remarks: json['remarks'] as String?,
);

Map<String, dynamic> _$AppOrderToJson(_AppOrder instance) => <String, dynamic>{
  'id': instance.id,
  'symbol': instance.symbol,
  'side': _$OrderSideEnumMap[instance.side]!,
  'orderType': _$OrderTypeEnumMap[instance.orderType]!,
  'price': instance.price,
  'quantity': instance.quantity,
  'filledQuantity': instance.filledQuantity,
  'averagePrice': instance.averagePrice,
  'status': _$OrderStatusEnumMap[instance.status]!,
  'productType': _$ProductTypeEnumMap[instance.productType]!,
  'stopLossPrice': instance.stopLossPrice,
  'targetPrice': instance.targetPrice,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'executedAt': instance.executedAt?.toIso8601String(),
  'remarks': instance.remarks,
};

const _$OrderSideEnumMap = {OrderSide.buy: 'buy', OrderSide.sell: 'sell'};

const _$OrderTypeEnumMap = {
  OrderType.market: 'market',
  OrderType.limit: 'limit',
  OrderType.stopLoss: 'sl',
  OrderType.stopLossMarket: 'sl_market',
};

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.open: 'open',
  OrderStatus.partiallyFilled: 'partially_filled',
  OrderStatus.filled: 'filled',
  OrderStatus.cancelled: 'cancelled',
  OrderStatus.rejected: 'rejected',
};

const _$ProductTypeEnumMap = {
  ProductType.mis: 'mis',
  ProductType.nrml: 'nrml',
  ProductType.cnc: 'cnc',
};
