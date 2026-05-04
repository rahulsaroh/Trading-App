import 'package:freezed_annotation/freezed_annotation.dart';
import 'order.dart';

part 'trade.freezed.dart';
part 'trade.g.dart';

/// Represents a trade execution
@freezed
abstract class AppTrade with _$AppTrade {
  const factory AppTrade({
    required String id,
    required String orderId,
    required String symbol,
    required OrderSide side,
    required double price,
    required int quantity,
    required double value,
    required double brokerage,
    required double gst,
    required double stampDuty,
    required double sebiFee,
    required double totalCharges,
    required DateTime executedAt,
  }) = _AppTrade;

  factory AppTrade.fromJson(Map<String, dynamic> json) => _$AppTradeFromJson(json);

  const AppTrade._();

  /// Calculate net value after charges
  double get netValue => value - totalCharges;

  /// Check if buy trade
  bool get isBuy => side == OrderSide.buy;

  /// Check if sell trade
  bool get isSell => side == OrderSide.sell;
}
