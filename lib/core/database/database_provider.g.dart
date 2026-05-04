// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appDatabase)
final appDatabaseProvider = AppDatabaseProvider._();

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'448adad5717e7b1c0b3ca3ca7e03d0b2116237af';

@ProviderFor(watchlistDao)
final watchlistDaoProvider = WatchlistDaoProvider._();

final class WatchlistDaoProvider
    extends $FunctionalProvider<WatchlistDao, WatchlistDao, WatchlistDao>
    with $Provider<WatchlistDao> {
  WatchlistDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchlistDaoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchlistDaoHash();

  @$internal
  @override
  $ProviderElement<WatchlistDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  WatchlistDao create(Ref ref) {
    return watchlistDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WatchlistDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WatchlistDao>(value),
    );
  }
}

String _$watchlistDaoHash() => r'4a6da2504e9f29acefcd8f0049b491e871f88996';
