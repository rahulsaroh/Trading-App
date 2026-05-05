import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories/market_data_repository.dart';
import '../../data/datasources/nse_api_client.dart';
import '../../data/models/stock_quote.dart';
import '../../data/models/option_chain.dart';
import '../../data/models/candle.dart';
import '../../core/utils/market_hours_utils.dart';

part 'market_data_providers.g.dart';

@riverpod
NseApiClient nseApiClient(Ref ref) => NseApiClient();

@riverpod
MarketDataRepository marketRepository(Ref ref) {
  return MarketDataRepository();
}

@riverpod
class Nifty50Stocks extends _$Nifty50Stocks {
  Timer? _timer;

  @override
  Future<List<StockQuote>> build() async {
    ref.onDispose(() => _timer?.cancel());
    
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) {
      if (MarketHoursUtils.isMarketOpen()) {
        ref.invalidateSelf();
      }
    });

    return ref.watch(marketRepositoryProvider).fetchNifty50Stocks();
  }
}

@riverpod
Future<StockQuote?> stockQuote(Ref ref, String symbol) {
  return ref.watch(marketRepositoryProvider).fetchStockQuote(symbol);
}

@riverpod
class OptionChainNotifier extends _$OptionChainNotifier {
  Timer? _timer;

  @override
  Future<OptionChain> build(String symbol) async {
    ref.onDispose(() => _timer?.cancel());

    _timer = Timer.periodic(const Duration(seconds: 60), (timer) {
      if (MarketHoursUtils.isMarketOpen()) {
        ref.invalidateSelf();
      }
    });

    return ref.watch(marketRepositoryProvider).fetchOptionChain(symbol);
  }
}

@riverpod
MarketStatus marketStatus(Ref ref) {
  return MarketHoursUtils.getStatus();
}

@riverpod
class IndexQuotesNotifier extends _$IndexQuotesNotifier {
  Timer? _refreshTimer;

  @override
  Future<Map<String, StockQuote>> build() async {
    _refreshTimer?.cancel();
    _refreshTimer = Timer.periodic(const Duration(seconds: 30), (_) {
      if (MarketHoursUtils.isMarketOpen()) ref.invalidateSelf();
    });
    ref.onDispose(() => _refreshTimer?.cancel());

    await NseApiClient().initialize();
    return ref.read(marketRepositoryProvider).fetchIndexQuotes();
  }
}

@riverpod
Future<List<Candle>> niftyIntradayChart(Ref ref) async {
  return ref.read(marketRepositoryProvider)
      .fetchIntradayData('^NSEI', interval: '5m');
}
