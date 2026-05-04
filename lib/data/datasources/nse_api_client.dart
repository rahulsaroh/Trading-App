import 'package:dio/dio.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/stock.dart';
import '../models/option.dart';
import '../../../core/errors/exceptions.dart';

part 'nse_api_client.g.dart';

/// NSE API client for fetching market data
@riverpod
NseApiClient nseApiClient(Ref ref) {
  return NseApiClient(
    dio: ref.watch(dioProvider),
  );
}

@riverpod
Dio dio(Ref ref) {
  final options = BaseOptions(
    baseUrl: 'https://nseindia.com',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
      'Accept': 'application/json',
      'Referer': 'https://nseindia.com',
    },
  );
  return Dio(options);
}

class NseApiClient {
  final Dio dio;
  WebSocketChannel? _priceChannel;

  NseApiClient({required this.dio});

  /// Get stock quote
  Future<AppStock> getStockQuote(String symbol) async {
    try {
      final response = await dio.get('/api/quote-equity?symbol=$symbol');
      return AppStock.fromJson(response.data);
    } on DioException catch (e) {
      throw ApiException('Failed to get stock quote', statusCode: e.response?.statusCode);
    }
  }

  /// Get Nifty 50 stocks
  Future<List<AppStock>> getNiftyStocks() async {
    try {
      final response = await dio.get('/api/niftystocks');
      final List data = response.data;
      return data.map((json) => AppStock.fromJson(json)).toList();
    } on DioException catch (e) {
      throw ApiException('Failed to get Nifty stocks', statusCode: e.response?.statusCode);
    }
  }

  /// Get option chain for a symbol
  Future<AppOptionChain> getOptionChain(String symbol) async {
    try {
      final response = await dio.get('/api/option-chain-$symbol');
      return AppOptionChain.fromJson(response.data);
    } on DioException catch (e) {
      throw ApiException('Failed to get option chain', statusCode: e.response?.statusCode);
    }
  }

  /// Connect to price WebSocket for live updates
  void connectPriceStream(List<String> symbols, void Function(String symbol, double price) onPrice) {
    try {
      _priceChannel = WebSocketChannel.connect(
        Uri.parse('wss://nseindia.com/api/stream'),
      );

      _priceChannel!.stream.listen((data) {
        final Map<String, dynamic> message = data;
        final symbol = message['symbol'] as String;
        final price = message['price'] as double;
        onPrice(symbol, price);
      }, onError: (e) {
        throw WebSocketException('Price stream error: $e');
      });
    } catch (e) {
      throw WebSocketException('Failed to connect to price stream: $e');
    }
  }

  /// Disconnect price stream
  void disconnectPriceStream() {
    _priceChannel?.sink.close();
    _priceChannel = null;
  }

  void dispose() {
    disconnectPriceStream();
  }
}
