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
    if (current.cashBalance + delta < 0) {
      throw Exception('Insufficient funds');
    }
    await (_db.update(_db.portfolioTable)..where((t) => t.id.equals('portfolio'))).write(
      PortfolioTableCompanion(
        cashBalance: Value(current.cashBalance + delta),
        lastUpdated: Value(DateTime.now()),
      ),
    );
  }

  Future<void> recordTrade(TradesCompanion trade) async {
    // 1. Save trade
    await _db.saveTrade(trade);

    // 2. Update cash balance
    final cost = trade.price.value * trade.quantity.value;
    final charges = trade.totalCharges.value;
    final delta = trade.side.value == 'BUY' ? -(cost + charges) : (cost - charges);
    await updateBalance(delta);

    // 3. Update or create position
    final positions = await _db.getAllPositions();
    final existing = positions.where((p) => p.symbol == trade.symbol.value && p.isActive).toList();

    if (existing.isEmpty) {
      if (trade.side.value == 'BUY') {
        await _db.savePosition(PositionsCompanion.insert(
          symbol: trade.symbol.value,
          type: 'STOCK',
          averagePrice: trade.price.value,
          currentPrice: Value(trade.price.value),
          quantity: trade.quantity.value,
          openedAt: DateTime.now(),
        ));
      }
    } else {
      final pos = existing.first;
      int newQty;
      double newAvg;

      if (trade.side.value == 'BUY') {
        newQty = pos.quantity + trade.quantity.value;
        newAvg = ((pos.averagePrice * pos.quantity) + (trade.price.value * trade.quantity.value)) / newQty;
      } else {
        newQty = pos.quantity - trade.quantity.value;
        newAvg = pos.averagePrice; // Selling doesn't change avg price of remaining
      }

      if (newQty <= 0) {
        await _db.closePosition(pos.id, trade.price.value);
      } else {
        await _db.savePosition(PositionsCompanion(
          id: Value(pos.id),
          quantity: Value(newQty),
          averagePrice: Value(newAvg),
        ));
      }
    }
  }

  Future<void> resetAccount() async {
    await _db.customStatement('DELETE FROM trades');
    await _db.customStatement('DELETE FROM positions');
    await _db.customStatement('DELETE FROM orders');
    await _db.customStatement('DELETE FROM portfolio_table');
    await getPortfolio(); // Re-initializes with 10L
  }
}
