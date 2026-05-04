/// Utility class for validating trading-related inputs
class Validators {
  /// Validate order quantity
  static String? validateQuantity(String? value) {
    if (value == null || value.isEmpty) {
      return 'Quantity is required';
    }

    final quantity = int.tryParse(value);
    if (quantity == null) {
      return 'Please enter a valid quantity';
    }

    if (quantity <= 0) {
      return 'Quantity must be greater than 0';
    }

    if (quantity > 1000000) {
      return 'Quantity cannot exceed 1,000,000';
    }

    return null;
  }

  /// Validate price
  static String? validatePrice(String? value) {
    if (value == null || value.isEmpty) {
      return 'Price is required';
    }

    final price = double.tryParse(value);
    if (price == null) {
      return 'Please enter a valid price';
    }

    if (price <= 0) {
      return 'Price must be greater than 0';
    }

    if (price > 1000000) {
      return 'Price cannot exceed ₹10,00,000';
    }

    return null;
  }

  /// Validate stop loss price
  static String? validateStopLoss(String? value, double entryPrice) {
    if (value == null || value.isEmpty) {
      return null; // Stop loss is optional
    }

    final stopLoss = double.tryParse(value);
    if (stopLoss == null) {
      return 'Please enter a valid stop loss price';
    }

    if (stopLoss <= 0) {
      return 'Stop loss must be greater than 0';
    }

    if (stopLoss >= entryPrice) {
      return 'Stop loss must be less than entry price';
    }

    return null;
  }

  /// Validate target price
  static String? validateTarget(String? value, double entryPrice) {
    if (value == null || value.isEmpty) {
      return null; // Target is optional
    }

    final target = double.tryParse(value);
    if (target == null) {
      return 'Please enter a valid target price';
    }

    if (target <= 0) {
      return 'Target must be greater than 0';
    }

    if (target <= entryPrice) {
      return 'Target must be greater than entry price';
    }

    return null;
  }

  /// Validate symbol name
  static String? validateSymbol(String? value) {
    if (value == null || value.isEmpty) {
      return 'Symbol is required';
    }

    if (value.length < 2) {
      return 'Symbol must be at least 2 characters';
    }

    if (value.length > 20) {
      return 'Symbol cannot exceed 20 characters';
    }

    // Check for valid characters (alphanumeric, dots, hyphens)
    final validSymbolRegex = RegExp(r'^[A-Z0-9.-]+$');
    if (!validSymbolRegex.hasMatch(value.toUpperCase())) {
      return 'Symbol contains invalid characters';
    }

    return null;
  }

  /// Validate option strike price
  static String? validateStrikePrice(String? value) {
    if (value == null || value.isEmpty) {
      return 'Strike price is required';
    }

    final strike = double.tryParse(value);
    if (strike == null) {
      return 'Please enter a valid strike price';
    }

    if (strike <= 0) {
      return 'Strike price must be greater than 0';
    }

    // Check if it's a valid strike interval (typically multiples of 50, 100, etc.)
    final validIntervals = [50, 100, 500, 1000];
    bool isValidInterval = false;

    for (final interval in validIntervals) {
      if ((strike % interval) == 0) {
        isValidInterval = true;
        break;
      }
    }

    if (!isValidInterval) {
      return 'Strike price must be in valid intervals (50, 100, 500, 1000)';
    }

    return null;
  }

  /// Validate expiry date
  static String? validateExpiryDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Expiry date is required';
    }

    final expiryDate = DateTime.tryParse(value);
    if (expiryDate == null) {
      return 'Please enter a valid expiry date';
    }

    final now = DateTime.now();
    if (expiryDate.isBefore(now)) {
      return 'Expiry date cannot be in the past';
    }

    final maxExpiry = now.add(const Duration(days: 365));
    if (expiryDate.isAfter(maxExpiry)) {
      return 'Expiry date cannot be more than 1 year from now';
    }

    return null;
  }

  /// Validate email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null;
  }

  /// Validate phone number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    // Remove all non-digit characters
    final digitsOnly = value.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.length != 10) {
      return 'Phone number must be 10 digits';
    }

    if (!digitsOnly.startsWith('6') &&
        !digitsOnly.startsWith('7') &&
        !digitsOnly.startsWith('8') &&
        !digitsOnly.startsWith('9')) {
      return 'Phone number must start with 6, 7, 8, or 9';
    }

    return null;
  }

  /// Validate PAN number
  static String? validatePAN(String? value) {
    if (value == null || value.isEmpty) {
      return 'PAN number is required';
    }

    final panRegex = RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$');
    if (!panRegex.hasMatch(value.toUpperCase())) {
      return 'Please enter a valid PAN number (AAAAA9999A)';
    }

    return null;
  }

  /// Validate amount (for deposits, withdrawals, etc.)
  static String? validateAmount(String? value, {double minAmount = 1, double maxAmount = 1000000}) {
    if (value == null || value.isEmpty) {
      return 'Amount is required';
    }

    final amount = double.tryParse(value);
    if (amount == null) {
      return 'Please enter a valid amount';
    }

    if (amount < minAmount) {
      return 'Amount must be at least ₹${minAmount.toInt()}';
    }

    if (amount > maxAmount) {
      return 'Amount cannot exceed ₹${maxAmount.toInt()}';
    }

    return null;
  }

  /// Validate password
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }

    if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }

    if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
      return 'Password must contain at least one number';
    }

    if (!RegExp(r'(?=.*[@$!%*?&])').hasMatch(value)) {
      return 'Password must contain at least one special character';
    }

    return null;
  }

  /// Validate confirm password
  static String? validateConfirmPassword(String? value, String originalPassword) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }

    if (value != originalPassword) {
      return 'Passwords do not match';
    }

    return null;
  }
}
