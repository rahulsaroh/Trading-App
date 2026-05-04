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

String _$marketRepositoryHash() => r'774677073be9003906bff85004f94e69825a9626';

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
          AsyncValue<StockQuote>,
          StockQuote,
          FutureOr<StockQuote>
        >
    with $FutureModifier<StockQuote>, $FutureProvider<StockQuote> {
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
  $FutureProviderElement<StockQuote> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<StockQuote> create(Ref ref) {
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

String _$stockQuoteHash() => r'107bdd9533ed34a3f7e0ac2a370e55720e295dfa';

final class StockQuoteFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<StockQuote>, String> {
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
