/// Base exception class for the TradeDesk app
abstract class AppException implements Exception {
  final String message;
  final String? code;
  final dynamic details;

  const AppException(this.message, {this.code, this.details});

  @override
  String toString() => 'AppException: $message${code != null ? ' (Code: $code)' : ''}';
}

/// Network-related exceptions
class NetworkException extends AppException {
  const NetworkException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class ApiException extends AppException {
  final int? statusCode;

  const ApiException(String message, {this.statusCode, String? code, dynamic details})
      : super(message, code: code, details: details);
}

class TimeoutException extends AppException {
  const TimeoutException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

/// Database-related exceptions
class DatabaseException extends AppException {
  const DatabaseException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class DataNotFoundException extends DatabaseException {
  const DataNotFoundException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

/// Trading-related exceptions
class TradingException extends AppException {
  const TradingException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class InsufficientFundsException extends TradingException {
  final double required;
  final double available;

  InsufficientFundsException(this.required, this.available)
      : super('Insufficient funds. Required: ₹${required.toStringAsFixed(2)}, Available: ₹${available.toStringAsFixed(2)}',
              code: 'INSUFFICIENT_FUNDS');
}

class InvalidOrderException extends TradingException {
  const InvalidOrderException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class MarketClosedException extends TradingException {
  const MarketClosedException()
      : super('Market is currently closed', code: 'MARKET_CLOSED');
}

class SymbolNotFoundException extends TradingException {
  final String symbol;

  const SymbolNotFoundException(this.symbol)
      : super('Symbol not found: $symbol', code: 'SYMBOL_NOT_FOUND');
}

class InvalidQuantityException extends TradingException {
  final int quantity;
  final int? minQuantity;
  final int? maxQuantity;

  const InvalidQuantityException(this.quantity, {this.minQuantity, this.maxQuantity})
      : super('Invalid quantity: $quantity${minQuantity != null ? ' (Min: $minQuantity)' : ''}${maxQuantity != null ? ' (Max: $maxQuantity)' : ''}',
              code: 'INVALID_QUANTITY');
}

class InvalidPriceException extends TradingException {
  final double price;
  final double? minPrice;
  final double? maxPrice;

  InvalidPriceException(this.price, {this.minPrice, this.maxPrice})
      : super('Invalid price: ₹${price.toStringAsFixed(2)}${minPrice != null ? ' (Min: ₹${minPrice.toStringAsFixed(2)})' : ''}${maxPrice != null ? ' (Max: ₹${maxPrice.toStringAsFixed(2)})' : ''}',
              code: 'INVALID_PRICE');
}

/// Authentication exceptions
class AuthException extends AppException {
  const AuthException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class InvalidCredentialsException extends AuthException {
  const InvalidCredentialsException()
      : super('Invalid email or password', code: 'INVALID_CREDENTIALS');
}

class UserNotFoundException extends AuthException {
  const UserNotFoundException()
      : super('User not found', code: 'USER_NOT_FOUND');
}

class UserAlreadyExistsException extends AuthException {
  const UserAlreadyExistsException()
      : super('User already exists', code: 'USER_EXISTS');
}

class SessionExpiredException extends AuthException {
  const SessionExpiredException()
      : super('Session has expired. Please login again', code: 'SESSION_EXPIRED');
}

/// Validation exceptions
class ValidationException extends AppException {
  final Map<String, String> errors;

  const ValidationException(this.errors)
      : super('Validation failed', code: 'VALIDATION_ERROR', details: errors);

  @override
  String toString() {
    final errorMessages = errors.entries.map((e) => '${e.key}: ${e.value}').join(', ');
    return 'ValidationException: $errorMessages';
  }
}

/// Cache exceptions
class CacheException extends AppException {
  const CacheException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

/// WebSocket exceptions
class WebSocketException extends AppException {
  const WebSocketException(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

class ConnectionLostException extends WebSocketException {
  const ConnectionLostException()
      : super('Connection to server lost', code: 'CONNECTION_LOST');
}

/// Generic failure class for handling different types of failures
class Failure {
  final String message;
  final String? code;
  final dynamic details;

  const Failure(this.message, {this.code, this.details});

  @override
  String toString() => 'Failure: $message${code != null ? ' (Code: $code)' : ''}';
}

/// Network failure
class NetworkFailure extends Failure {
  const NetworkFailure(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

/// Server failure
class ServerFailure extends Failure {
  final int? statusCode;

  const ServerFailure(String message, {this.statusCode, String? code, dynamic details})
      : super(message, code: code, details: details);
}

/// Cache failure
class CacheFailure extends Failure {
  const CacheFailure(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

/// Validation failure
class ValidationFailure extends Failure {
  final Map<String, String> errors;

  const ValidationFailure(this.errors)
      : super('Validation failed', code: 'VALIDATION_ERROR', details: errors);
}

/// Trading failure
class TradingFailure extends Failure {
  const TradingFailure(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

/// Authentication failure
class AuthFailure extends Failure {
  const AuthFailure(String message, {String? code, dynamic details})
      : super(message, code: code, details: details);
}

/// Extension to convert exceptions to failures
extension ExceptionToFailure on Exception {
  Failure toFailure() {
    if (this is AppException) {
      final appException = this as AppException;
      return Failure(appException.message, code: appException.code, details: appException.details);
    }
    return Failure(toString());
  }
}

/// Utility class for handling exceptions
class ExceptionHandler {
  static Failure handleException(Exception exception) {
    if (exception is AppException) {
      return Failure(exception.message, code: exception.code, details: exception.details);
    } else if (exception is FormatException) {
      return Failure('Invalid data format', code: 'FORMAT_ERROR', details: exception.message);
    } else if (exception is ArgumentError) {
      return Failure('Invalid argument', code: 'ARGUMENT_ERROR', details: (exception as ArgumentError).message);
    } else {
      return Failure('An unexpected error occurred', code: 'UNKNOWN_ERROR', details: exception.toString());
    }
  }

  static String getErrorMessage(Failure failure) {
    switch (failure.code) {
      case 'INSUFFICIENT_FUNDS':
        return 'You don\'t have enough funds for this transaction';
      case 'MARKET_CLOSED':
        return 'Market is currently closed. Orders can only be placed during market hours';
      case 'SYMBOL_NOT_FOUND':
        return 'The selected stock symbol was not found';
      case 'INVALID_QUANTITY':
        return 'Please enter a valid quantity';
      case 'INVALID_PRICE':
        return 'Please enter a valid price';
      case 'INVALID_CREDENTIALS':
        return 'Invalid email or password';
      case 'USER_NOT_FOUND':
        return 'Account not found with this email';
      case 'USER_EXISTS':
        return 'An account with this email already exists';
      case 'SESSION_EXPIRED':
        return 'Your session has expired. Please login again';
      case 'CONNECTION_LOST':
        return 'Connection lost. Please check your internet connection';
      case 'NETWORK_ERROR':
        return 'Network error. Please check your internet connection';
      case 'VALIDATION_ERROR':
        return 'Please check your input and try again';
      default:
        return failure.message;
    }
  }
}
