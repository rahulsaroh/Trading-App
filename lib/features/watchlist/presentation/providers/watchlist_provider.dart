import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart';
import '../../../../core/database/database_provider.dart';
import '../../../../data/datasources/app_database.dart';
import '../../../market_depth/market_data_providers.dart';

part 'watchlist_provider.g.dart';

@riverpod
class WatchlistState extends _$WatchlistState {
  @override
  Future<List<dynamic>> build() async {
    final dao = ref.watch(watchlistDaoProvider);
    final lists = await dao.getAllWatchlists();
    
    if (lists.isEmpty) {
      await dao.createWatchlist(const WatchlistNamesCompanion(name: Value('My Watchlist'), position: Value(0)));
      return dao.getAllWatchlists();
    }
    
    return lists;
  }

  Future<void> addWatchlist(String name) async {
    final dao = ref.watch(watchlistDaoProvider);
    await dao.createWatchlist(WatchlistNamesCompanion(name: Value(name), position: Value(state.value?.length ?? 0)));
    ref.invalidateSelf();
  }

  Future<void> removeWatchlist(int id) async {
    await ref.read(watchlistDaoProvider).deleteWatchlist(id);
    ref.invalidateSelf();
  }
}

@riverpod
class CurrentWatchlistItems extends _$CurrentWatchlistItems {
  @override
  Future<List<dynamic>> build(int watchlistId) async {
    final dao = ref.watch(watchlistDaoProvider);
    return dao.getItemsForWatchlist(watchlistId);
  }

  Future<void> addItem(String symbol, String name, String type) async {
    await ref.read(watchlistDaoProvider).addItem(WatchlistItemsCompanion(
      watchlistId: Value(watchlistId),
      symbol: Value(symbol),
      name: Value(name),
      instrumentType: Value(type),
      addedAt: Value(DateTime.now()),
    ));
    ref.invalidateSelf();
  }

  Future<void> removeItem(int id) async {
    await ref.read(watchlistDaoProvider).removeItem(id);
    ref.invalidateSelf();
  }
}
