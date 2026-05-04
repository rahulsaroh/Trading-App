import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'position.freezed.dart';
part 'position.g.dart';

/// Represents a position in the portfolio
@freezed
abstract class AppPosition with _$AppPosition {
  const factory AppPosition({
    required String id,
    required String symbol,
    required String name,
    required PositionType type,
    required double entryPrice,
    required double currentPrice,
    required int quantity,
    required double pnl,
    required double pnlPercentage,
    required double dayPnl,
    required double dayPnLPercentage,
    required DateTime openedAt,
    required DateTime? closedAt,
    required bool isActive,
    required double brokerage,
  }) = _AppPosition;

  factory AppPosition.fromJson(Map<String, dynamic> json) => _$AppPositionFromJson(json);

  const AppPosition._();

  /// Calculate current P&L
  double get totalPnl => quantity * (currentPrice - entryPrice) - brokerage;

  /// Calculate current P&L percentage
  double get totalPnlPercentage => entryPrice != 0 ? (totalPnl / (entryPrice * quantity)) * 100 : 0;

  /// Calculate day P&L percentage
  double get dayPnLPercentage => entryPrice != 0 ? (dayPnl / (entryPrice * quantity)) * 100 : 0;

  /// Get the current value of the position
  double get currentValue => quantity * currentPrice;

  /// Get the invested value
  double get investedValue => quantity * entryPrice;

  /// Check if position is profitable
  bool get isProfitable => totalPnl > 0;

  /// Check if position is loss-making
  bool get isLossMaking => totalPnl < 0;

  /// Check if position is closed
  bool get isClosed => !isActive;

  /// Create a copy with updated price
  AppPosition updatePrice(double newPrice, {double? newDayPnl}) {
    final pnl = quantity * (newPrice - entryPrice) - brokerage;
    final pnlPercentage = entryPrice != 0 ? (pnl / (entryPrice * quantity)) * 100 : 0.0;
    return copyWith(
      currentPrice: newPrice,
      pnl: pnl,
      pnlPercentage: pnlPercentage,
      dayPnl: newDayPnl ?? dayPnl,
    );
  }

  /// Close the position
  AppPosition close(double exitPrice) {
    return copyWith(
      currentPrice: exitPrice,
      isActive: false,
      closedAt: DateTime.now(),
      pnl: quantity * (exitPrice - entryPrice) - brokerage,
      pnlPercentage: entryPrice != 0 ? ((quantity * (exitPrice - entryPrice) - brokerage) / (entryPrice * quantity)) * 100 : 0,
    );
  }
}

/// Type of position
enum PositionType {
  @JsonValue('stock')
  stock('Stock'),
  
  @JsonValue('call')
  call('Call Option'),
  
  @JsonValue('put')
  put('Put Option');

  const PositionType(this.displayName);
  final String displayName;
}

/// Extension for AppPosition operations
extension AppPositionExtensions on List<AppPosition> {
  /// Get active positions
  List<AppPosition> get active => where((p) => p.isActive).toList();

  /// Get closed positions
  List<AppPosition> get closed => where((p) => !p.isActive).toList();

  /// Get total P&L
  double get totalPnl => fold(0.0, (sum, p) => sum + p.totalPnl);

  /// Get total day P&L
  double get totalDayPnl => fold(0.0, (sum, p) => sum + p.dayPnl);

  /// Get positions by type
  List<AppPosition> ofType(PositionType type) => where((p) => p.type == type).toList();
}
