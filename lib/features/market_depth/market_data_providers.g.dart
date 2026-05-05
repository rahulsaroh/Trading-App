// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_data_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(nseApiClient)
final nseApiClientProvider = NseApiClientProvider._();

final class NseApiClientProvider
    extends $FunctionalProvider<NseApiClient, NseApiClient, NseApiClient>
    with $Provider<NseApiClient> {
  NseApiClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nseApiClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nseApiClientHash();

  @$internal
  @override
  $ProviderElement<NseApiClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  NseApiClient create(Ref ref) {
    return nseApiClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NseApiClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NseApiClient>(value),
    );
  }
}

String _$nseApiClientHash() => r'118f215c44ee0708e1d5879e6ce2de32a67f69ee';

@ProviderFor(marketRepository)
final marketRepositoryProvider = MarketRepositoryProvider._();

final class MarketRepositoryProvider
    extends
        $FunctionalProvider<
          MarketDataRepository,
          MarketDataRepository,
          MarketDataRepository
        >
    with $Provider<MarketDataRepository> {
  MarketRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'marketRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$marketRepositoryHash();

  @$internal
  @override
  $ProviderElement<MarketDataRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MarketDataRepository create(Ref ref) {
    return marketRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MarketDataRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MarketDataRepository>(value),
    );
  }
}

String _$marketRepositoryHash() => r'c6769e4d18f94357f858f6e94396df7db33942b6';

@ProviderFor(Nifty50Stocks)
final nifty50StocksProvider = Nifty50StocksProvider._();

final class Nifty50StocksProvider
    extends $AsyncNotifierProvider<Nifty50Stocks, List<StockQuote>> {
  Nifty50StocksProvider._()
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
  String debugGetCreateSourceHash() => _$nifty50StocksHash();

  @$internal
  @override
  Nifty50Stocks create() => Nifty50Stocks();
}

String _$nifty50StocksHash() => r'492243e2b19ab5a6b95dcae4ddfe405b83c1d2ca';

abstract class _$Nifty50Stocks extends $AsyncNotifier<List<StockQuote>> {
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

@ProviderFor(stockQuote)
final stockQuoteProvider = StockQuoteFamily._();

final class StockQuoteProvider
    extends
        $FunctionalProvider<
          AsyncValue<StockQuote?>,
          StockQuote?,
          FutureOr<StockQuote?>
        >
    with $FutureModifier<StockQuote?>, $FutureProvider<StockQuote?> {
  StockQuoteProvider._({
    required StockQuoteFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'stockQuoteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$stockQuoteHash();

  @override
  String toString() {
    return r'stockQuoteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<StockQuote?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<StockQuote?> create(Ref ref) {
    final argument = this.argument as String;
    return stockQuote(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is StockQuoteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$stockQuoteHash() => r'dd0a3782345516d2c1cf40c1cae7ea4ab60b811a';

final class StockQuoteFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<StockQuote?>, String> {
  StockQuoteFamily._()
    : super(
        retry: null,
        name: r'stockQuoteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  StockQuoteProvider call(String symbol) =>
      StockQuoteProvider._(argument: symbol, from: this);

  @override
  String toString() => r'stockQuoteProvider';
}

@ProviderFor(OptionChainNotifier)
final optionChainProvider = OptionChainNotifierFamily._();

final class OptionChainNotifierProvider
    extends $AsyncNotifierProvider<OptionChainNotifier, OptionChain> {
  OptionChainNotifierProvider._({
    required OptionChainNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'optionChainProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$optionChainNotifierHash();

  @override
  String toString() {
    return r'optionChainProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  OptionChainNotifier create() => OptionChainNotifier();

  @override
  bool operator ==(Object other) {
    return other is OptionChainNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$optionChainNotifierHash() =>
    r'39a64e7fb41fc05243d75c133e766b6ef4d822ef';

final class OptionChainNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          OptionChainNotifier,
          AsyncValue<OptionChain>,
          OptionChain,
          FutureOr<OptionChain>,
          String
        > {
  OptionChainNotifierFamily._()
    : super(
        retry: null,
        name: r'optionChainProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OptionChainNotifierProvider call(String symbol) =>
      OptionChainNotifierProvider._(argument: symbol, from: this);

  @override
  String toString() => r'optionChainProvider';
}

abstract class _$OptionChainNotifier extends $AsyncNotifier<OptionChain> {
  late final _$args = ref.$arg as String;
  String get symbol => _$args;

  FutureOr<OptionChain> build(String symbol);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<OptionChain>, OptionChain>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<OptionChain>, OptionChain>,
              AsyncValue<OptionChain>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
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

String _$marketStatusHash() => r'103d5cba3d93a0b1704af7596a0dffa1089009ba';

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
    r'86981e411ff2e487b6a95c2d996ec822c9ace7ca';

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
    r'49bfc70585362810b1a1be2ab2286b9d63acf707';
