// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_execution_engine.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderExecutionEngine)
final orderExecutionEngineProvider = OrderExecutionEngineProvider._();

final class OrderExecutionEngineProvider
    extends $AsyncNotifierProvider<OrderExecutionEngine, void> {
  OrderExecutionEngineProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orderExecutionEngineProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orderExecutionEngineHash();

  @$internal
  @override
  OrderExecutionEngine create() => OrderExecutionEngine();
}

String _$orderExecutionEngineHash() =>
    r'7ea42242bb68ca36c31eeaa00e5d353d962a1b8e';

abstract class _$OrderExecutionEngine extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
