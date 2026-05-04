// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AlertState)
final alertStateProvider = AlertStateProvider._();

final class AlertStateProvider
    extends $AsyncNotifierProvider<AlertState, List<dynamic>> {
  AlertStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alertStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alertStateHash();

  @$internal
  @override
  AlertState create() => AlertState();
}

String _$alertStateHash() => r'99a9417ee7ed1a84911eaa9ce4e2e9a86d9e4319';

abstract class _$AlertState extends $AsyncNotifier<List<dynamic>> {
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

@ProviderFor(AlertEngine)
final alertEngineProvider = AlertEngineProvider._();

final class AlertEngineProvider extends $NotifierProvider<AlertEngine, void> {
  AlertEngineProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alertEngineProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alertEngineHash();

  @$internal
  @override
  AlertEngine create() => AlertEngine();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$alertEngineHash() => r'8cf3ca8e12348aaa4ab06a571d2bc482402d4aa6';

abstract class _$AlertEngine extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
