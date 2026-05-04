// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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

String _$allOrdersHash() => r'68e930622922b163810e363007599e62e7d8a49a';

@ProviderFor(portfolioSummary)
final portfolioSummaryProvider = PortfolioSummaryProvider._();

final class PortfolioSummaryProvider
    extends $FunctionalProvider<AsyncValue<dynamic>, dynamic, FutureOr<dynamic>>
    with $FutureModifier<dynamic>, $FutureProvider<dynamic> {
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
  $FutureProviderElement<dynamic> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<dynamic> create(Ref ref) {
    return portfolioSummary(ref);
  }
}

String _$portfolioSummaryHash() => r'a6313703ed302975b0173f683dc2f23a2dbf72b4';

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

String _$activePositionsHash() => r'0574bf8ad1ad84cfd9325005911949c7e5727a85';

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
