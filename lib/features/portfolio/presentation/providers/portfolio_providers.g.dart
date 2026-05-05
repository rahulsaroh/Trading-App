// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ActivePositions)
final activePositionsProvider = ActivePositionsProvider._();

final class ActivePositionsProvider
    extends $AsyncNotifierProvider<ActivePositions, List<dynamic>> {
  ActivePositionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activePositionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activePositionsHash();

  @$internal
  @override
  ActivePositions create() => ActivePositions();
}

String _$activePositionsHash() => r'45d7d57061925d6af984858586026c5d3b1e639c';

abstract class _$ActivePositions extends $AsyncNotifier<List<dynamic>> {
  FutureOr<List<dynamic>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<dynamic>>, List<dynamic>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<dynamic>>, List<dynamic>>,
              AsyncValue<List<dynamic>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(PortfolioSummary)
final portfolioSummaryProvider = PortfolioSummaryProvider._();

final class PortfolioSummaryProvider
    extends $AsyncNotifierProvider<PortfolioSummary, dynamic> {
  PortfolioSummaryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'portfolioSummaryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$portfolioSummaryHash();

  @$internal
  @override
  PortfolioSummary create() => PortfolioSummary();
}

String _$portfolioSummaryHash() => r'e89bad55ea2e23fb4283f10af9be30eada34df79';

abstract class _$PortfolioSummary extends $AsyncNotifier<dynamic> {
  FutureOr<dynamic> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<dynamic>, dynamic>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<dynamic>, dynamic>,
              AsyncValue<dynamic>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(allOrders)
final allOrdersProvider = AllOrdersProvider._();

final class AllOrdersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<dynamic>>,
          List<dynamic>,
          FutureOr<List<dynamic>>
        >
    with $FutureModifier<List<dynamic>>, $FutureProvider<List<dynamic>> {
  AllOrdersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'allOrdersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$allOrdersHash();

  @$internal
  @override
  $FutureProviderElement<List<dynamic>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<dynamic>> create(Ref ref) {
    return allOrders(ref);
  }
}

String _$allOrdersHash() => r'ab9a1895da74c71714c0ac77e170a22ccc118594';

@ProviderFor(allTrades)
final allTradesProvider = AllTradesProvider._();

final class AllTradesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<dynamic>>,
          List<dynamic>,
          FutureOr<List<dynamic>>
        >
    with $FutureModifier<List<dynamic>>, $FutureProvider<List<dynamic>> {
  AllTradesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'allTradesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$allTradesHash();

  @$internal
  @override
  $FutureProviderElement<List<dynamic>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<dynamic>> create(Ref ref) {
    return allTrades(ref);
  }
}

String _$allTradesHash() => r'7163c825cc5343646b7baf05c3efcb511dcc2695';
