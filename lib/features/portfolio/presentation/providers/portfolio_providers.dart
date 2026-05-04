import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart';
import '../../../../core/database/database_provider.dart';

part 'portfolio_providers.g.dart';

@riverpod
Future<List<dynamic>> allOrders(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return (db.select(db.orders)..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)])).get();
}

@riverpod
Future<dynamic> portfolioSummary(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return (db.select(db.portfolioTable)..where((t) => t.id.equals('portfolio'))).getSingle();
}

@riverpod
class ActivePositions extends _$ActivePositions {
  @override
  Future<List<dynamic>> build() async {
    final db = ref.watch(appDatabaseProvider);
    return (db.select(db.positions)..where((t) => t.isActive.equals(true))).get();
  }

  double calculatePnl(dynamic pos, double ltp) {
    final multiplier = pos.side == 'BUY' ? 1 : -1;
    return (ltp - pos.averagePrice) * pos.quantity * multiplier;
  }
}
