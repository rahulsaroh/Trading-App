// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TradingSettings)
final tradingSettingsProvider = TradingSettingsProvider._();

final class TradingSettingsProvider
    extends $NotifierProvider<TradingSettings, Map<String, dynamic>> {
  TradingSettingsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tradingSettingsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tradingSettingsHash();

  @$internal
  @override
  TradingSettings create() => TradingSettings();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, dynamic> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, dynamic>>(value),
    );
  }
}

String _$tradingSettingsHash() => r'b9647b18d52475e9d91902078e7807b2961be49b';

abstract class _$TradingSettings extends $Notifier<Map<String, dynamic>> {
  Map<String, dynamic> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Map<String, dynamic>, Map<String, dynamic>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, dynamic>, Map<String, dynamic>>,
              Map<String, dynamic>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
