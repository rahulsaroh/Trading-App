import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/models/stock_quote.dart';
import '../../../data/models/candle.dart';
import '../../../data/repositories/market_data_repository.dart';
import '../../../data/datasources/nse_api_client.dart';

part 'market_providers.g.dart';

@riverpod
MarketDataRepository marketDataRepository(MarketDataRepositoryRef ref) {
  return MarketDataRepository();
}

// Index quotes provider — auto refreshes every 30 seconds
@riverpod
class IndexQuotesNotifier extends _$IndexQuotesNotifier {
  Timer? _refreshTimer;

  @override
  Future<Map<String, StockQuote>> build() async {
    // Start auto-refresh timer
    _refreshTimer?.cancel();
    _refreshTimer = Timer.periodic(const Duration(seconds: 30), (_) {
      if (isMarketOpen()) ref.invalidateSelf();
    });
    ref.onDispose(() => _refreshTimer?.cancel());

    // Initialize NSE client session on first load
    await NseApiClient().initialize();
    
    return ref.read(marketDataRepositoryProvider).fetchIndexQuotes();
  }

  Future<void> forceRefresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() =>
        ref.read(marketDataRepositoryProvider).fetchIndexQuotes());
  }
}

// Nifty 50 intraday chart data
@riverpod
Future<List<Candle>> niftyIntradayChart(NiftyIntradayChartRef ref) async {
  return ref.read(marketDataRepositoryProvider)
      .fetchIntradayData('^NSEI', interval: '5m');
}

// Nifty 50 stocks list  
@riverpod
class Nifty50StocksNotifier extends _$Nifty50StocksNotifier {
  @override
  Future<List<StockQuote>> build() async {
    return ref.read(marketDataRepositoryProvider).fetchNifty50Stocks();
  }
}

// Market status (real-time IST check)
@riverpod
MarketStatus marketStatus(MarketStatusRef ref) {
  final now = DateTime.now().toUtc().add(const Duration(hours: 5, minutes: 30));
  final weekday = now.weekday; // 1=Mon, 7=Sun
  
  if (weekday == 6 || weekday == 7) return MarketStatus.closed;
  
  final open = DateTime(now.year, now.month, now.day, 9, 15);
  final preOpen = DateTime(now.year, now.month, now.day, 9, 0);
  final close = DateTime(now.year, now.month, now.day, 15, 30);
  
  if (now.isBefore(preOpen)) return MarketStatus.closed;
  if (now.isBefore(open)) return MarketStatus.preOpen;
  if (now.isBefore(close)) return MarketStatus.open;
  return MarketStatus.closed;
}

bool isMarketOpen() {
  final now = DateTime.now().toUtc()
      .add(const Duration(hours: 5, minutes: 30));
  final open = DateTime(now.year, now.month, now.day, 9, 15);
  final close = DateTime(now.year, now.month, now.day, 15, 30);
  final weekday = now.weekday;
  return weekday < 6 && now.isAfter(open) && now.isBefore(close);
}

enum MarketStatus { preOpen, open, closed }
