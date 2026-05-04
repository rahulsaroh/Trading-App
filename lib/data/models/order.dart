import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

/// Order types
enum OrderType {
  @JsonValue('market')
  market('Market'),
  
  @JsonValue('limit')
  limit('Limit'),
  
  @JsonValue('sl')
  stopLoss('Stop Loss'),
  
  @JsonValue('sl_market')
  stopLossMarket('Stop Loss Market');

  const OrderType(this.displayName);
  final String displayName;
}

/// Order side (buy/sell)
enum OrderSide {
  @JsonValue('buy')
  buy('Buy'),
  
  @JsonValue('sell')
  sell('Sell');

  const OrderSide(this.displayName);
  final String displayName;
}

/// Order status
enum OrderStatus {
  @JsonValue('pending')
  pending('Pending'),
  
  @JsonValue('open')
  open('Open'),
  
  @JsonValue('partially_filled')
  partiallyFilled('Partially Filled'),
  
  @JsonValue('filled')
  filled('Filled'),
  
  @JsonValue('cancelled')
  cancelled('Cancelled'),
  
  @JsonValue('rejected')
  rejected('Rejected');

  const OrderStatus(this.displayName);
  final String displayName;
}

/// Product type
enum ProductType {
  @JsonValue('mis')
  mis('MIS'),
  
  @JsonValue('nrml')
  nrml('NRML'),
  
  @JsonValue('cnc')
  cnc('CNC');

  const ProductType(this.displayName);
  final String displayName;
}

/// Represents an order in the trading system
@freezed
abstract class AppOrder with _$AppOrder {
  const factory AppOrder({
    required String id,
    required String symbol,
    required OrderSide side,
    required OrderType orderType,
    required double price,
    required int quantity,
    required double filledQuantity,
    required double averagePrice,
    required OrderStatus status,
    required ProductType productType,
    required double? stopLossPrice,
    required double? targetPrice,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime? executedAt,
    required String? remarks,
  }) = _AppOrder;

  factory AppOrder.fromJson(Map<String, dynamic> json) => _$AppOrderFromJson(json);

  const AppOrder._();

  /// Check if order is pending
  bool get isPending => status == OrderStatus.pending;

  /// Check if order is open
  bool get isOpen => status == OrderStatus.open;

  /// Check if order is filled
  bool get isFilled => status == OrderStatus.filled;

  /// Check if order is partially filled
  bool get isPartiallyFilled => status == OrderStatus.partiallyFilled;

  /// Check if order is completed (filled or cancelled)
  bool get isCompleted => isFilled || status == OrderStatus.cancelled;

  /// Check if order can be modified
  bool get canModify => isOpen || isPending;

  /// Check if order can be cancelled
  bool get canCancel => isOpen || isPending || isPartiallyFilled;

  /// Get remaining quantity to fill
  double get remainingQuantity => quantity - filledQuantity;

  /// Calculate total order value
  double get totalValue => price * quantity;

  /// Calculate filled value
  double get filledValue => averagePrice * filledQuantity;

  /// Check if buy side
  bool get isBuy => side == OrderSide.buy;

  /// Check if sell side
  bool get isSell => side == OrderSide.sell;

  /// Check if has stop loss
  bool get hasStopLoss => stopLossPrice != null;

  /// Check if has target
  bool get hasTarget => targetPrice != null;

  /// Create a pending order
  factory AppOrder.create({
    required String symbol,
    required OrderSide side,
    required OrderType orderType,
    required double price,
    required int quantity,
    required ProductType productType,
    double? stopLossPrice,
    double? targetPrice,
  }) {
    return AppOrder(
      id: Uuid().v4(),
      symbol: symbol,
      side: side,
      orderType: orderType,
      price: price,
      quantity: quantity,
      filledQuantity: 0,
      averagePrice: 0,
      status: OrderStatus.pending,
      productType: productType,
      stopLossPrice: stopLossPrice,
      targetPrice: targetPrice,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      executedAt: null,
      remarks: null,
    );
  }

  /// Update order status to filled
  AppOrder markFilled(double fillPrice, double fillQuantity) {
    final newFilledQuantity = (filledQuantity + fillQuantity).clamp(0.0, quantity.toDouble()).toDouble();
    final newAveragePrice = fillQuantity > 0 
        ? ((averagePrice * filledQuantity) + (fillPrice * fillQuantity)) / newFilledQuantity
        : averagePrice;
    
    final newStatus = newFilledQuantity >= quantity 
        ? OrderStatus.filled 
        : newFilledQuantity > 0 
            ? OrderStatus.partiallyFilled 
            : OrderStatus.open;
    
    return copyWith(
      filledQuantity: newFilledQuantity,
      averagePrice: newAveragePrice,
      status: newStatus,
      updatedAt: DateTime.now(),
      executedAt: newStatus == OrderStatus.filled ? DateTime.now() : executedAt,
    );
  }

  /// Cancel the order
  AppOrder cancel() {
    return copyWith(
      status: OrderStatus.cancelled,
      updatedAt: DateTime.now(),
    );
  }
}


/// UUID generator
class Uuid {
  String v4() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replaceAllMapped(RegExp(r'[xy]'), (match) {
      final r = (DateTime.now().microsecondsSinceEpoch * 1000 + (0 + (16 * _random()))) % 16 | 0;
      final v = match.group(0) == 'x' ? r : (r & 0x3 | 0x8);
      return v.toRadixString(16);
    });
  }

  int _random() => (DateTime.now().microsecond * 1000 + DateTime.now().microsecond) % 256;
}
