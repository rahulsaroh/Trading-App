import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/app_database.dart';

part 'database_provider.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
}

@Riverpod(keepAlive: true)
WatchlistDao watchlistDao(Ref ref) {
  return ref.watch(appDatabaseProvider).watchlistDao;
}
