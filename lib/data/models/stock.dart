import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'stock.freezed.dart';
part 'stock.g.dart';

/// Represents a stock in the trading system
@freezed
abstract class AppStock with _$AppStock {
  const factory AppStock({
    required String symbol,
    required String name,
    required String exchange,
    required double currentPrice,
    required double previousClose,
    required double dayHigh,
    required double dayLow,
    required double volume,
    required double marketCap,
    required String sector,
    required String industry,
    required double peRatio,
    required double pbRatio,
    required double dividendYield,
    required double beta,
    required double fiftyTwoWeekHigh,
    required double fiftyTwoWeekLow,
    required DateTime lastUpdated,
    required bool isActive,
  }) = _AppStock;

  factory AppStock.fromJson(Map<String, dynamic> json) => _$AppStockFromJson(json);

  const AppStock._();

  /// Calculate the price change from previous close
  double get priceChange => currentPrice - previousClose;

  /// Calculate the percentage change
  double get percentageChange => previousClose != 0 ? (priceChange / previousClose) * 100 : 0;

  /// Check if the stock is bullish today
  bool get isBullish => priceChange > 0;

  /// Check if the stock is bearish today
  bool get isBearish => priceChange < 0;

  /// Check if the stock is at 52-week high
  bool get isAt52WeekHigh => currentPrice >= fiftyTwoWeekHigh * 0.99; // 99% to account for rounding

  /// Check if the stock is at 52-week low
  bool get isAt52WeekLow => currentPrice <= fiftyTwoWeekLow * 1.01; // 101% to account for rounding

  /// Get the distance from 52-week high as percentage
  double get distanceFrom52WeekHigh => fiftyTwoWeekHigh != 0 ? ((fiftyTwoWeekHigh - currentPrice) / fiftyTwoWeekHigh) * 100 : 0;

  /// Get the distance from 52-week low as percentage
  double get distanceFrom52WeekLow => fiftyTwoWeekLow != 0 ? ((currentPrice - fiftyTwoWeekLow) / fiftyTwoWeekLow) * 100 : 0;

  /// Check if the stock is volatile (beta > 1.2)
  bool get isHighVolatility => beta > 1.2;

  /// Check if the stock is low volatility (beta < 0.8)
  bool get isLowVolatility => beta < 0.8;

  /// Check if the stock is expensive (PE > 25)
  bool get isExpensive => peRatio > 25;

  /// Check if the stock is cheap (PE < 15)
  bool get isCheap => peRatio > 0 && peRatio < 15;

  /// Check if the stock has good dividend yield (> 2%)
  bool get hasGoodDividend => dividendYield > 2.0;

  /// Get the market cap category
  String get marketCapCategory {
    if (marketCap >= 500000000000) return 'Large Cap'; // 50,000 Cr
    if (marketCap >= 50000000000) return 'Mid Cap'; // 5,000 Cr
    if (marketCap >= 5000000000) return 'Small Cap'; // 500 Cr
    return 'Micro Cap';
  }

  /// Create a copy with updated price data
  AppStock updatePrice(double newPrice, double newVolume) {
    return copyWith(
      currentPrice: newPrice,
      volume: newVolume,
      lastUpdated: DateTime.now(),
    );
  }

  /// Create a copy with updated OHLC data
  AppStock updateOHLC(double high, double low, double close) {
    return copyWith(
      dayHigh: high,
      dayLow: low,
      previousClose: close,
      lastUpdated: DateTime.now(),
    );
  }
}

/// Represents a stock quote (lighter version for real-time updates)
@freezed
abstract class AppStockQuote with _$AppStockQuote {
  const factory AppStockQuote({
    required String symbol,
    required double price,
    required double change,
    required double percentageChange,
    required double volume,
    required DateTime timestamp,
  }) = _AppStockQuote;

  factory AppStockQuote.fromJson(Map<String, dynamic> json) => _$AppStockQuoteFromJson(json);

  const AppStockQuote._();

  /// Check if the quote is bullish
  bool get isBullish => change > 0;

  /// Check if the quote is bearish
  bool get isBearish => change < 0;

  /// Get the change direction
  String get changeDirection => isBullish ? 'up' : isBearish ? 'down' : 'neutral';
}

/// Represents stock statistics
@freezed
abstract class AppStockStats with _$AppStockStats {
  const factory AppStockStats({
    required String symbol,
    required double averageVolume,
    required double volatility,
    required double beta,
    required double sharpeRatio,
    required double maxDrawdown,
    required DateTime lastCalculated,
  }) = _AppStockStats;

  factory AppStockStats.fromJson(Map<String, dynamic> json) => _$AppStockStatsFromJson(json);

  const AppStockStats._();

  /// Check if the stock is highly volatile
  bool get isHighlyVolatile => volatility > 0.3;

  /// Check if the stock has good risk-adjusted returns
  bool get hasGoodSharpeRatio => sharpeRatio > 1.0;

  /// Check if the stock has acceptable drawdown
  bool get hasAcceptableDrawdown => maxDrawdown < 0.2; // Less than 20%
}
