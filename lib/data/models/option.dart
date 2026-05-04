import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/utils/extensions.dart';

part 'option.freezed.dart';
part 'option.g.dart';

/// Type of option contract
enum OptionType {
  @JsonValue('CE')
  call('CE', 'Call'),

  @JsonValue('PE')
  put('PE', 'Put');

  const OptionType(this.code, this.displayName);

  final String code;
  final String displayName;

  bool get isCall => this == call;
  bool get isPut => this == put;
}

/// Represents an options contract
@freezed
abstract class AppOption with _$AppOption {
  const factory AppOption({
    required String symbol,
    required String underlyingSymbol,
    required double strikePrice,
    required OptionType type,
    required DateTime expiryDate,
    required double currentPrice,
    required double previousClose,
    required double bidPrice,
    required double askPrice,
    required int bidQuantity,
    required int askQuantity,
    required double openInterest,
    required double volume,
    required double impliedVolatility,
    required double delta,
    required double gamma,
    required double theta,
    required double vega,
    required double rho,
    required DateTime lastUpdated,
    required bool isActive,
  }) = _AppOption;

  factory AppOption.fromJson(Map<String, dynamic> json) => _$AppOptionFromJson(json);

  const AppOption._();

  /// Get the option symbol (e.g., NIFTY23DEC18000CE)
  String get optionSymbol {
    final underlying = underlyingSymbol.replaceAll(' ', '');
    final expiry = expiryDate.toExpiryFormat;
    final strike = strikePrice.toInt().toString().padLeft(5, '0');
    return '$underlying$expiry$strike${type.code}';
  }

  /// Calculate the price change from previous close
  double get priceChange => currentPrice - previousClose;

  /// Calculate the percentage change
  double get percentageChange => previousClose != 0 ? (priceChange / previousClose) * 100 : 0;

  /// Check if the option is in the money
  bool get isInTheMoney {
    // This would need current underlying price, simplified for now
    return false; // TODO: Implement with underlying price
  }

  /// Check if the option is at the money
  bool get isAtTheMoney {
    // This would need current underlying price, simplified for now
    return false; // TODO: Implement with underlying price
  }

  /// Check if the option is out of the money
  bool get isOutOfTheMoney => !isInTheMoney && !isAtTheMoney;

  /// Get the intrinsic value
  double getIntrinsicValue(double underlyingPrice) {
    if (type.isCall) {
      return (underlyingPrice - strikePrice).clamp(0, double.infinity);
    } else {
      return (strikePrice - underlyingPrice).clamp(0, double.infinity);
    }
  }

  /// Get the time value
  double getTimeValue(double underlyingPrice) {
    return (currentPrice - getIntrinsicValue(underlyingPrice)).clamp(0, double.infinity);
  }

  /// Check if the option is bullish
  bool get isBullish => priceChange > 0;

  /// Check if the option is bearish
  bool get isBearish => priceChange < 0;

  /// Get the days to expiry
  int get daysToExpiry {
    final now = DateTime.now();
    return expiryDate.difference(now).inDays;
  }

  /// Check if the option expires today
  bool get expiresToday => daysToExpiry == 0;

  /// Check if the option expires this week
  bool get expiresThisWeek => daysToExpiry <= 7;

  /// Check if the option is near expiry
  bool get isNearExpiry => daysToExpiry <= 30;

  /// Get the moneyness as a string
  String get moneynessString {
    if (isInTheMoney) return 'ITM';
    if (isAtTheMoney) return 'ATM';
    return 'OTM';
  }

  /// Get the bid-ask spread
  double get bidAskSpread => askPrice - bidPrice;

  /// Get the bid-ask spread percentage
  double get bidAskSpreadPercentage => bidPrice != 0 ? (bidAskSpread / bidPrice) * 100 : 0;

  /// Check if the option has good liquidity
  bool get hasGoodLiquidity => openInterest > 1000 && volume > 100;

  /// Get the option's sensitivity measures
  Map<String, double> get greeks => {
    'delta': delta,
    'gamma': gamma,
    'theta': theta,
    'vega': vega,
    'rho': rho,
  };

  /// Create a copy with updated price data
  AppOption updatePrice(double newPrice, double newBid, double newAsk, int newBidQty, int newAskQty) {
    return copyWith(
      currentPrice: newPrice,
      bidPrice: newBid,
      askPrice: newAsk,
      bidQuantity: newBidQty,
      askQuantity: newAskQty,
      lastUpdated: DateTime.now(),
    );
  }

  /// Create a copy with updated OI and volume
  AppOption updateOI(double newOI, double newVolume) {
    return copyWith(
      openInterest: newOI,
      volume: newVolume,
      lastUpdated: DateTime.now(),
    );
  }
}

/// Represents an option chain for a specific underlying and expiry
@freezed
abstract class AppOptionChain with _$AppOptionChain {
  const factory AppOptionChain({
    required String underlyingSymbol,
    required DateTime expiryDate,
    required List<AppOption> calls,
    required List<AppOption> puts,
    required double underlyingPrice,
    required double spotPrice,
    required DateTime lastUpdated,
  }) = _AppOptionChain;

  factory AppOptionChain.fromJson(Map<String, dynamic> json) => _$AppOptionChainFromJson(json);

  const AppOptionChain._();

  /// Get all options in the chain
  List<AppOption> get allOptions => [...calls, ...puts];

  /// Get the total open interest for calls
  double get totalCallOI => calls.fold(0, (sum, option) => sum + option.openInterest);

  /// Get the total open interest for puts
  double get totalPutOI => puts.fold(0, (sum, option) => sum + option.openInterest);

  /// Get the put-call ratio
  double get putCallRatio => totalCallOI != 0 ? totalPutOI / totalCallOI : 0;

  /// Get the maximum pain point (strike with maximum open interest)
  double? get maxPainStrike {
    final oiByStrike = <double, double>{};

    for (final option in allOptions) {
      oiByStrike[option.strikePrice] = (oiByStrike[option.strikePrice] ?? 0) + option.openInterest;
    }

    if (oiByStrike.isEmpty) return null;

    return oiByStrike.entries.reduce((a, b) => a.value > b.value ? a : b).key;
  }

  /// Get strikes near the current price
  List<double> getStrikesNearPrice(double range) {
    final minStrike = underlyingPrice * (1 - range);
    final maxStrike = underlyingPrice * (1 + range);

    return allOptions
        .map((option) => option.strikePrice)
        .where((strike) => strike >= minStrike && strike <= maxStrike)
        .toSet()
        .toList()
      ..sort();
  }

  /// Get the ATM strike
  double? get atmStrike {
    return allOptions
        .map((option) => option.strikePrice)
        .reduce((a, b) => (a - underlyingPrice).abs() < (b - underlyingPrice).abs() ? a : b);
  }

  /// Get options for a specific strike
  Map<String, AppOption?> getOptionsForStrike(double strike) {
    final call = calls.where((option) => option.strikePrice == strike).firstOrNull;
    final put = puts.where((option) => option.strikePrice == strike).firstOrNull;

    return {'call': call, 'put': put};
  }
}

/// Extension for List<AppOption>
extension AppOptionListExtensions on List<AppOption> {
  /// Filter options by type
  List<AppOption> whereType(OptionType type) {
    return where((option) => option.type == type).toList();
  }

  /// Filter options by strike range
  List<AppOption> whereStrikeBetween(double minStrike, double maxStrike) {
    return where((option) => option.strikePrice >= minStrike && option.strikePrice <= maxStrike).toList();
  }

  /// Sort options by strike price
  List<AppOption> sortedByStrike() {
    return [...this]..sort((a, b) => a.strikePrice.compareTo(b.strikePrice));
  }

  /// Sort options by open interest
  List<AppOption> sortedByOpenInterest() {
    return [...this]..sort((a, b) => b.openInterest.compareTo(a.openInterest));
  }

  /// Sort options by volume
  List<AppOption> sortedByVolume() {
    return [...this]..sort((a, b) => b.volume.compareTo(a.volume));
  }

  /// Get total open interest
  double get totalOpenInterest => fold(0, (sum, option) => sum + option.openInterest);

  /// Get total volume
  double get totalVolume => fold(0, (sum, option) => sum + option.volume);
}
