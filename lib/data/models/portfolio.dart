import 'package:freezed_annotation/freezed_annotation.dart';
import 'position.dart';

part 'portfolio.freezed.dart';
part 'portfolio.g.dart';

/// Virtual portfolio for paper trading
@freezed
abstract class AppPortfolio with _$AppPortfolio {
  const factory AppPortfolio({
    required double cashBalance,
    required double totalValue,
    required double totalPnl,
    required double dayPnl,
    required List<AppPosition> positions,
    required DateTime lastUpdated,
  }) = _AppPortfolio;

  factory AppPortfolio.fromJson(Map<String, dynamic> json) => _$AppPortfolioFromJson(json);

  const AppPortfolio._();

  /// Initial portfolio with ₹10,00,000 virtual cash
  factory AppPortfolio.initial() => AppPortfolio(
        cashBalance: 1000000.0,
        totalValue: 1000000.0,
        totalPnl: 0.0,
        dayPnl: 0.0,
        positions: [],
        lastUpdated: DateTime.now(),
      );

  /// Get invested amount (total value - cash)
  double get investedAmount => totalValue - cashBalance;

  /// Check if portfolio has positions
  bool get hasPositions => positions.isNotEmpty;

  /// Get active positions (not closed)
  List<AppPosition> get activePositions => positions.where((p) => p.isActive).toList();

  /// Calculate day P&L from positions
  double calculateDayPnl() {
    final dayPnl = activePositions.fold(0.0, (sum, position) => sum + position.dayPnl);
    return dayPnl;
  }

  /// Calculate total P&L
  double calculateTotalPnl() {
    final totalPnl = activePositions.fold(0.0, (sum, position) => sum + position.totalPnl);
    return totalPnl;
  }

  /// Check if can afford a purchase
  bool canAfford(double price, int quantity, {double brokerage = 20.0}) {
    final totalCost = (price * quantity) + brokerage;
    return cashBalance >= totalCost;
  }

  /// Get buying power (available cash)
  double get buyingPower => cashBalance;

  /// Check if portfolio is fully invested
  bool get isFullyInvested => cashBalance < 1000; // Less than ₹1000 cash left
}

/// Position summary for portfolio view
@freezed
abstract class AppPositionSummary with _$AppPositionSummary {
  const factory AppPositionSummary({
    required String symbol,
    required String name,
    required double quantity,
    required double entryPrice,
    required double currentPrice,
    required double pnl,
    required double pnlPercentage,
    required DateTime openedAt,
    required bool isActive,
  }) = _AppPositionSummary;

  factory AppPositionSummary.fromJson(Map<String, dynamic> json) => _$AppPositionSummaryFromJson(json);

  const AppPositionSummary._();

  /// Get the absolute P&L value
  double get absolutePnl => pnl.abs();

  /// Check if position is profitable
  bool get isProfitable => pnl > 0;

  /// Check if position is loss-making
  bool get isLossMaking => pnl < 0;

  /// Get the current value of the position
  double get currentValue => quantity * currentPrice;

  /// Get the invested value
  double get investedValue => quantity * entryPrice;
}
