// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WatchlistState)
final watchlistStateProvider = WatchlistStateProvider._();

final class WatchlistStateProvider
    extends $AsyncNotifierProvider<WatchlistState, List<dynamic>> {
  WatchlistStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'watchlistStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$watchlistStateHash();

  @$internal
  @override
  WatchlistState create() => WatchlistState();
}

String _$watchlistStateHash() => r'bde74af07f8e091c21477bb2d2f1768e591e204b';

abstract class _$WatchlistState extends $AsyncNotifier<List<dynamic>> {
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

@ProviderFor(CurrentWatchlistItems)
final currentWatchlistItemsProvider = CurrentWatchlistItemsFamily._();

final class CurrentWatchlistItemsProvider
    extends $AsyncNotifierProvider<CurrentWatchlistItems, List<dynamic>> {
  CurrentWatchlistItemsProvider._({
    required CurrentWatchlistItemsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'currentWatchlistItemsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$currentWatchlistItemsHash();

  @override
  String toString() {
    return r'currentWatchlistItemsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CurrentWatchlistItems create() => CurrentWatchlistItems();

  @override
  bool operator ==(Object other) {
    return other is CurrentWatchlistItemsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$currentWatchlistItemsHash() =>
    r'0e7f7174858dd9b898d205904ab5a3b0184c0d20';

final class CurrentWatchlistItemsFamily extends $Family
    with
        $ClassFamilyOverride<
          CurrentWatchlistItems,
          AsyncValue<List<dynamic>>,
          List<dynamic>,
          FutureOr<List<dynamic>>,
          int
        > {
  CurrentWatchlistItemsFamily._()
    : super(
        retry: null,
        name: r'currentWatchlistItemsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CurrentWatchlistItemsProvider call(int watchlistId) =>
      CurrentWatchlistItemsProvider._(argument: watchlistId, from: this);

  @override
  String toString() => r'currentWatchlistItemsProvider';
}

abstract class _$CurrentWatchlistItems extends $AsyncNotifier<List<dynamic>> {
  late final _$args = ref.$arg as int;
  int get watchlistId => _$args;

  FutureOr<List<dynamic>> build(int watchlistId);
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
    element.handleCreate(ref, () => build(_$args));
  }
}
