// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppPortfolio _$AppPortfolioFromJson(Map<String, dynamic> json) =>
    _AppPortfolio(
      cashBalance: (json['cashBalance'] as num).toDouble(),
      totalValue: (json['totalValue'] as num).toDouble(),
      totalPnl: (json['totalPnl'] as num).toDouble(),
      dayPnl: (json['dayPnl'] as num).toDouble(),
      positions: (json['positions'] as List<dynamic>)
          .map((e) => AppPosition.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$AppPortfolioToJson(_AppPortfolio instance) =>
    <String, dynamic>{
      'cashBalance': instance.cashBalance,
      'totalValue': instance.totalValue,
      'totalPnl': instance.totalPnl,
      'dayPnl': instance.dayPnl,
      'positions': instance.positions,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };

_AppPositionSummary _$AppPositionSummaryFromJson(Map<String, dynamic> json) =>
    _AppPositionSummary(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      entryPrice: (json['entryPrice'] as num).toDouble(),
      currentPrice: (json['currentPrice'] as num).toDouble(),
      pnl: (json['pnl'] as num).toDouble(),
      pnlPercentage: (json['pnlPercentage'] as num).toDouble(),
      openedAt: DateTime.parse(json['openedAt'] as String),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$AppPositionSummaryToJson(_AppPositionSummary instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'quantity': instance.quantity,
      'entryPrice': instance.entryPrice,
      'currentPrice': instance.currentPrice,
      'pnl': instance.pnl,
      'pnlPercentage': instance.pnlPercentage,
      'openedAt': instance.openedAt.toIso8601String(),
      'isActive': instance.isActive,
    };
