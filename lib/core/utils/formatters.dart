import 'package:intl/intl.dart';

/// Utility class for formatting various data types used in trading
class Formatters {
  static final NumberFormat _currencyFormat = NumberFormat.currency(
    locale: 'en_IN',
    symbol: '₹',
    decimalDigits: 2,
  );

  static final NumberFormat _compactCurrencyFormat = NumberFormat.compactCurrency(
    locale: 'en_IN',
    symbol: '₹',
    decimalDigits: 1,
  );

  static final NumberFormat _percentageFormat = NumberFormat.percentPattern('en_IN');

  static final NumberFormat _decimalFormat = NumberFormat('#,##0.00', 'en_IN');

  static final NumberFormat _compactNumberFormat = NumberFormat.compact(locale: 'en_IN');

  static final DateFormat _dateFormat = DateFormat('dd MMM yyyy', 'en_IN');

  static final DateFormat _timeFormat = DateFormat('HH:mm:ss', 'en_IN');

  static final DateFormat _dateTimeFormat = DateFormat('dd MMM yyyy, HH:mm', 'en_IN');

  /// Format currency amount
  static String formatCurrency(double amount, {bool compact = false}) {
    if (compact && amount >= 100000) {
      return _compactCurrencyFormat.format(amount);
    }
    return _currencyFormat.format(amount);
  }

  /// Format percentage
  static String formatPercentage(double percentage, {int decimalPlaces = 2}) {
    final format = NumberFormat.percentPattern('en_IN');
    format.minimumFractionDigits = 0;
    format.maximumFractionDigits = decimalPlaces;
    return format.format(percentage / 100);
  }

  /// Format decimal number
  static String formatDecimal(double number, {int decimalPlaces = 2}) {
    final format = NumberFormat('#,##0.${'#' * decimalPlaces}', 'en_IN');
    return format.format(number);
  }

  /// Format large numbers with K, M, B suffixes
  static String formatCompactNumber(double number) {
    return _compactNumberFormat.format(number);
  }

  /// Format price change with +/- sign and color indication
  static String formatPriceChange(double change, {bool showSign = true}) {
    final sign = showSign ? (change >= 0 ? '+' : '') : '';
    return '$sign${formatDecimal(change, decimalPlaces: 2)}';
  }

  /// Format volume (large numbers)
  static String formatVolume(int volume) {
    return _compactNumberFormat.format(volume);
  }

  /// Format date
  static String formatDate(DateTime date) {
    return _dateFormat.format(date);
  }

  /// Format time
  static String formatTime(DateTime time) {
    return _timeFormat.format(time);
  }

  /// Format date and time
  static String formatDateTime(DateTime dateTime) {
    return _dateTimeFormat.format(dateTime);
  }

  /// Format order quantity
  static String formatQuantity(int quantity) {
    return NumberFormat('#,###', 'en_IN').format(quantity);
  }

  /// Format P&L (Profit and Loss)
  static String formatPnL(double pnl) {
    final formatted = formatCurrency(pnl.abs());
    return pnl >= 0 ? '+$formatted' : '-$formatted';
  }

  /// Format strike price for options
  static String formatStrikePrice(double strike) {
    return formatDecimal(strike, decimalPlaces: 0);
  }

  /// Format option symbol (e.g., NIFTY23DEC18000CE)
  static String formatOptionSymbol(String symbol) {
    // Add spaces for better readability
    return symbol.replaceAllMapped(
      RegExp(r'(\d{2})([A-Z]{3})(\d{5})([CP]E)'),
      (match) => '${match[1]} ${match[2]} ${match[3]} ${match[4]}',
    );
  }

  /// Format market cap
  static String formatMarketCap(double marketCap) {
    if (marketCap >= 100000000000) { // 100B
      return '${formatDecimal(marketCap / 1000000000, decimalPlaces: 1)}T';
    } else if (marketCap >= 1000000000) { // 1B
      return '${formatDecimal(marketCap / 1000000000, decimalPlaces: 1)}B';
    } else if (marketCap >= 1000000) { // 1M
      return '${formatDecimal(marketCap / 1000000, decimalPlaces: 1)}M';
    } else if (marketCap >= 1000) { // 1K
      return '${formatDecimal(marketCap / 1000, decimalPlaces: 1)}K';
    }
    return formatCurrency(marketCap);
  }

  /// Format EPS (Earnings Per Share)
  static String formatEPS(double eps) {
    return formatDecimal(eps, decimalPlaces: 2);
  }

  /// Format PE ratio
  static String formatPERatio(double pe) {
    return formatDecimal(pe, decimalPlaces: 2);
  }

  /// Format dividend yield
  static String formatDividendYield(double yield) {
    return formatPercentage(yield, decimalPlaces: 2);
  }

  /// Format beta
  static String formatBeta(double beta) {
    return formatDecimal(beta, decimalPlaces: 2);
  }

  /// Format volatility
  static String formatVolatility(double volatility) {
    return formatPercentage(volatility, decimalPlaces: 2);
  }
}
