// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppPosition _$AppPositionFromJson(Map<String, dynamic> json) => _AppPosition(
  id: json['id'] as String,
  symbol: json['symbol'] as String,
  name: json['name'] as String,
  type: $enumDecode(_$PositionTypeEnumMap, json['type']),
  entryPrice: (json['entryPrice'] as num).toDouble(),
  currentPrice: (json['currentPrice'] as num).toDouble(),
  quantity: (json['quantity'] as num).toInt(),
  pnl: (json['pnl'] as num).toDouble(),
  pnlPercentage: (json['pnlPercentage'] as num).toDouble(),
  dayPnl: (json['dayPnl'] as num).toDouble(),
  dayPnLPercentage: (json['dayPnLPercentage'] as num).toDouble(),
  openedAt: DateTime.parse(json['openedAt'] as String),
  closedAt: json['closedAt'] == null
      ? null
      : DateTime.parse(json['closedAt'] as String),
  isActive: json['isActive'] as bool,
  brokerage: (json['brokerage'] as num).toDouble(),
);

Map<String, dynamic> _$AppPositionToJson(_AppPosition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'type': _$PositionTypeEnumMap[instance.type]!,
      'entryPrice': instance.entryPrice,
      'currentPrice': instance.currentPrice,
      'quantity': instance.quantity,
      'pnl': instance.pnl,
      'pnlPercentage': instance.pnlPercentage,
      'dayPnl': instance.dayPnl,
      'dayPnLPercentage': instance.dayPnLPercentage,
      'openedAt': instance.openedAt.toIso8601String(),
      'closedAt': instance.closedAt?.toIso8601String(),
      'isActive': instance.isActive,
      'brokerage': instance.brokerage,
    };

const _$PositionTypeEnumMap = {
  PositionType.stock: 'stock',
  PositionType.call: 'call',
  PositionType.put: 'put',
};
