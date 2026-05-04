import 'package:drift/drift.dart';
import '../datasources/app_database.dart';

class PortfolioRepository {
  final AppDatabase _db;

  PortfolioRepository(this._db);

  Future<PortfolioTableData> getPortfolio() async {
    final list = await _db.select(_db.portfolioTable).get();
    if (list.isEmpty) {
      await _db.into(_db.portfolioTable).insert(PortfolioTableCompanion.insert(
        id: const Value('portfolio'),
        cashBalance: 1000000.0,
        lastUpdated: DateTime.now(),
      ));
      return (await _db.select(_db.portfolioTable).get()).first;
    }
    return list.first;
  }

  Future<void> updateBalance(double delta) async {
    final current = await getPortfolio();
    await (_db.update(_db.portfolioTable)..where((t) => t.id.equals('portfolio'))).write(
      PortfolioTableCompanion(
        cashBalance: Value(current.cashBalance + delta),
        lastUpdated: Value(DateTime.now()),
      ),
    );
  }
}
