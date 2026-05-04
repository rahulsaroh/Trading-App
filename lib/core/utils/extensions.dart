import 'package:flutter/material.dart';

/// Extension methods for common trading operations
extension DoubleExtensions on double {
  /// Check if the number is positive (bullish)
  bool get isBullish => this > 0;

  /// Check if the number is negative (bearish)
  bool get isBearish => this < 0;

  /// Check if the number is zero (neutral)
  bool get isNeutral => this == 0;

  /// Get the sign as a string (+, -, or empty for zero)
  String get signString => this > 0 ? '+' : (this < 0 ? '-' : '');

  /// Get the absolute value as currency string
  String get toCurrencyString => '₹${abs().toStringAsFixed(2)}';

  /// Get as percentage string
  String get toPercentageString => '${toStringAsFixed(2)}%';

  /// Round to nearest strike price interval
  double roundToStrikeInterval(int interval) {
    return (this / interval).round() * interval.toDouble();
  }

  /// Check if this is a valid strike price
  bool isValidStrikePrice() {
    final validIntervals = [50, 100, 500, 1000];
    return validIntervals.any((interval) => (this % interval) == 0);
  }
}

extension IntExtensions on int {
  /// Format as compact number (1K, 1M, etc.)
  String get toCompactString {
    if (this >= 1000000000) {
      return '${(this / 1000000000).toStringAsFixed(1)}B';
    } else if (this >= 1000000) {
      return '${(this / 1000000).toStringAsFixed(1)}M';
    } else if (this >= 1000) {
      return '${(this / 1000).toStringAsFixed(1)}K';
    }
    return toString();
  }

  /// Check if this is a valid quantity for trading
  bool get isValidQuantity => this > 0 && this <= 1000000;
}

extension StringExtensions on String {
  /// Capitalize first letter
  String get capitalize => isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';

  /// Capitalize first letter of each word
  String get capitalizeWords => split(' ').map((word) => word.capitalize).join(' ');

  /// Check if string is a valid trading symbol
  bool get isValidSymbol {
    if (length < 2 || length > 20) return false;
    final validSymbolRegex = RegExp(r'^[A-Z0-9.-]+$');
    return validSymbolRegex.hasMatch(toUpperCase());
  }

  /// Check if string is a valid option symbol
  bool get isValidOptionSymbol {
    // Basic pattern: SYMBOL + DATE + STRIKE + CE/PE
    final optionRegex = RegExp(r'^[A-Z]+[0-9]{5}[0-9]{5}[CP]E$');
    return optionRegex.hasMatch(toUpperCase());
  }

  /// Extract symbol from option symbol
  String get extractUnderlyingSymbol {
    if (!isValidOptionSymbol) return this;
    // Remove the last 11 characters (5 digits date + 5 digits strike + 1 CE/PE)
    return substring(0, length - 11);
  }

  /// Extract strike price from option symbol
  double? get extractStrikePrice {
    if (!isValidOptionSymbol) return null;
    final strikeStr = substring(length - 6, length - 1);
    return double.tryParse(strikeStr);
  }

  /// Check if it's a call option
  bool get isCallOption => toUpperCase().endsWith('CE');

  /// Check if it's a put option
  bool get isPutOption => toUpperCase().endsWith('PE');

  /// Remove special characters and spaces for search
  String get normalizedForSearch => toLowerCase().replaceAll(RegExp(r'[^\w\s]'), '').replaceAll(' ', '');
}

extension DateTimeExtensions on DateTime {
  /// Check if this date is a trading day (Monday to Friday)
  bool get isTradingDay => weekday >= 1 && weekday <= 5;

  /// Check if this is market hours (9:15 AM to 3:30 PM IST)
  bool get isMarketHours {
    final ist = toUtc().add(const Duration(hours: 5, minutes: 30));
    final hour = ist.hour;
    final minute = ist.minute;

    if (hour < 9 || hour > 15) return false;
    if (hour == 9 && minute < 15) return false;
    if (hour == 15 && minute > 30) return false;

    return true;
  }

  /// Get the next trading day
  DateTime get nextTradingDay {
    var next = add(const Duration(days: 1));
    while (!next.isTradingDay) {
      next = next.add(const Duration(days: 1));
    }
    return next;
  }

  /// Format as trading date (dd MMM yyyy)
  String get toTradingDateString {
    final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                   'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    return '${day.toString().padLeft(2, '0')} ${months[month - 1]} $year';
  }

  /// Get expiry date format for options (ddMMM)
  String get toExpiryFormat {
    final months = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN',
                   'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'];
    return '${day.toString().padLeft(2, '0')}${months[month - 1]}';
  }
}

extension ColorExtensions on Color {
  /// Get a lighter shade of the color
  Color lighten([double amount = 0.1]) {
    final hsl = HSLColor.fromColor(this);
    return hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0)).toColor();
  }

  /// Get a darker shade of the color
  Color darken([double amount = 0.1]) {
    final hsl = HSLColor.fromColor(this);
    return hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0)).toColor();
  }

  /// Get the opposite color (for contrast)
  Color get opposite => Color.fromARGB(
    alpha,
    255 - red,
    255 - green,
    255 - blue,
  );
}

extension ListExtensions<T> on List<T> {
  /// Get the last n elements
  List<T> lastN(int n) {
    if (length <= n) return this;
    return sublist(length - n);
  }

  /// Get elements from the middle (useful for pagination)
  List<T> middle(int start, int end) {
    final safeStart = start.clamp(0, length);
    final safeEnd = end.clamp(safeStart, length);
    return sublist(safeStart, safeEnd);
  }

  /// Check if list is not empty and not null
  bool get isNotEmptyAndNotNull => isNotEmpty;
}

extension MapExtensions<K, V> on Map<K, V> {
  /// Get value safely with default
  V? getOrDefault(K key, V? defaultValue) {
    return containsKey(key) ? this[key] : defaultValue;
  }

  /// Merge with another map
  Map<K, V> merge(Map<K, V> other) {
    return {...this, ...other};
  }
}
