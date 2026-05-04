// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nse_api_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// NSE API client for fetching market data

@ProviderFor(nseApiClient)
final nseApiClientProvider = NseApiClientProvider._();

/// NSE API client for fetching market data

final class NseApiClientProvider
    extends $FunctionalProvider<NseApiClient, NseApiClient, NseApiClient>
    with $Provider<NseApiClient> {
  /// NSE API client for fetching market data
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

String _$nseApiClientHash() => r'b389b0c6aa5dcc40d1e53649aa16bb3a71c19859';

@ProviderFor(dio)
final dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'85e900b6c755f9e359f5a8d1dcd10f14ce5efa5a';
