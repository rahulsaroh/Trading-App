import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart';
import '../../../../core/database/database_provider.dart';
import '../../../../data/datasources/app_database.dart';

part 'portfolio_providers.g.dart';

@riverpod
class ActivePositions extends _$ActivePositions {
  @override
  Future<List<dynamic>> build() async {
    final db = ref.watch(appDatabaseProvider);
    return (db.select(db.positions)..where((t) => t.isActive.equals(true))).get();
  }

  double calculatePnl(dynamic pos, double? currentPrice) {
    final ltp = currentPrice ?? pos.currentPrice;
    final qty = pos.quantity;
    final avg = pos.averagePrice;
    if (qty > 0) {
      return (ltp - avg) * qty;
    } else {
      return (avg - ltp) * qty.abs();
    }
  }
}

@riverpod
class PortfolioSummary extends _$PortfolioSummary {
  @override
  Future<dynamic> build() async {
    final db = ref.watch(appDatabaseProvider);
    return (db.select(db.portfolioTable)..where((t) => t.id.equals('portfolio'))).getSingleOrNull();
  }
}

@riverpod
Future<List<dynamic>> allOrders(Ref ref) async {
  final db = ref.watch(appDatabaseProvider);
  return (db.select(db.orders)..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)])).get();
}

@riverpod
Future<List<dynamic>> allTrades(Ref ref) async {
  final db = ref.watch(appDatabaseProvider);
  return (db.select(db.trades)..orderBy([(t) => OrderingTerm(expression: t.executedAt, mode: OrderingMode.desc)])).get();
}
