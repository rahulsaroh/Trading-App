// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(marketDataRepository)
final marketDataRepositoryProvider = MarketDataRepositoryProvider._();

final class MarketDataRepositoryProvider
    extends
        $FunctionalProvider<
          MarketDataRepository,
          MarketDataRepository,
          MarketDataRepository
        >
    with $Provider<MarketDataRepository> {
  MarketDataRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'marketDataRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$marketDataRepositoryHash();

  @$internal
  @override
  $ProviderElement<MarketDataRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MarketDataRepository create(Ref ref) {
    return marketDataRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MarketDataRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MarketDataRepository>(value),
    );
  }
}

String _$marketDataRepositoryHash() =>
    r'5500a021b4c71a3a711136366ddb4a9e580c431a';

@ProviderFor(IndexQuotesNotifier)
final indexQuotesProvider = IndexQuotesNotifierProvider._();

final class IndexQuotesNotifierProvider
    extends
        $AsyncNotifierProvider<IndexQuotesNotifier, Map<String, StockQuote>> {
  IndexQuotesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'indexQuotesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$indexQuotesNotifierHash();

  @$internal
  @override
  IndexQuotesNotifier create() => IndexQuotesNotifier();
}

String _$indexQuotesNotifierHash() =>
    r'065ac64d5a58dd03ef0ea0e5ad4b4a0ba0a90e3d';

abstract class _$IndexQuotesNotifier
    extends $AsyncNotifier<Map<String, StockQuote>> {
  FutureOr<Map<String, StockQuote>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Map<String, StockQuote>>,
              Map<String, StockQuote>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Map<String, StockQuote>>,
                Map<String, StockQuote>
              >,
              AsyncValue<Map<String, StockQuote>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(niftyIntradayChart)
final niftyIntradayChartProvider = NiftyIntradayChartProvider._();

final class NiftyIntradayChartProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Candle>>,
          List<Candle>,
          FutureOr<List<Candle>>
        >
    with $FutureModifier<List<Candle>>, $FutureProvider<List<Candle>> {
  NiftyIntradayChartProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'niftyIntradayChartProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$niftyIntradayChartHash();

  @$internal
  @override
  $FutureProviderElement<List<Candle>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Candle>> create(Ref ref) {
    return niftyIntradayChart(ref);
  }
}

String _$niftyIntradayChartHash() =>
    r'15bdc04067f72e8412350c4cfd142c295df205cb';

@ProviderFor(Nifty50StocksNotifier)
final nifty50StocksProvider = Nifty50StocksNotifierProvider._();

final class Nifty50StocksNotifierProvider
    extends $AsyncNotifierProvider<Nifty50StocksNotifier, List<StockQuote>> {
  Nifty50StocksNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nifty50StocksProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nifty50StocksNotifierHash();

  @$internal
  @override
  Nifty50StocksNotifier create() => Nifty50StocksNotifier();
}

String _$nifty50StocksNotifierHash() =>
    r'a3f7c2b81754262cd3ee854d40e15bb256fc3ea8';

abstract class _$Nifty50StocksNotifier
    extends $AsyncNotifier<List<StockQuote>> {
  FutureOr<List<StockQuote>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<StockQuote>>, List<StockQuote>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<StockQuote>>, List<StockQuote>>,
              AsyncValue<List<StockQuote>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(marketStatus)
final marketStatusProvider = MarketStatusProvider._();

final class MarketStatusProvider
    extends $FunctionalProvider<MarketStatus, MarketStatus, MarketStatus>
    with $Provider<MarketStatus> {
  MarketStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'marketStatusProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$marketStatusHash();

  @$internal
  @override
  $ProviderElement<MarketStatus> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MarketStatus create(Ref ref) {
    return marketStatus(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MarketStatus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MarketStatus>(value),
    );
  }
}

String _$marketStatusHash() => r'78f49b646652a43808a4e93e961972b8a5d70a57';
