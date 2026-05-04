import 'package:intl/intl.dart';

class CurrencyUtils {
  static final _indianFormat = NumberFormat.currency(
    locale: 'en_IN',
    symbol: '₹',
    decimalDigits: 2,
  );

  static String format(double value) {
    return _indianFormat.format(value);
  }

  static String formatCompact(double value) {
    if (value >= 10000000) {
      return '₹${(value / 10000000).toStringAsFixed(2)} Cr';
    } else if (value >= 100000) {
      return '₹${(value / 100000).toStringAsFixed(2)} L';
    }
    return _indianFormat.format(value);
  }
}
