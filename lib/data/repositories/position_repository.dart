import 'dart:math';
import 'package:drift/drift.dart';
import '../datasources/app_database.dart';

class PositionRepository {
  final AppDatabase _db;
  final Random _rand = Random();

  PositionRepository(this._db);

  String _generateId() {
    final chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    return List.generate(12, (index) => chars[_rand.nextInt(chars.length)]).join();
  }

  Future<Position?> getPosition(String symbol) async {
    final list = await (_db.select(_db.positions)..where((t) => t.symbol.equals(symbol))).get();
    return list.isNotEmpty ? list.first : null;
  }

  Future<List<Position>> getActivePositions() {
    return (_db.select(_db.positions)..where((t) => t.isActive.equals(true))).get();
  }

  /// Update position based on order execution
  /// Handles: new position, add to existing, partial exit, full close, shorting
  Future<Position?> updatePositionOnOrder({
    required String symbol,
    required String side,
    required int quantity,
    required double price,
    required String name,
  }) async {
    final existing = await getPosition(symbol);

    if (existing == null) {
      // New position opening
      final newPos = PositionsCompanion.insert(
        symbol: symbol,
        name: Value(name),
        type: 'STOCK',
        averagePrice: price,
        currentPrice: Value(price),
        quantity: side == 'BUY' ? quantity : -quantity,
        openedAt: DateTime.now(),
        isActive: const Value(true),
      );
      await _db.into(_db.positions).insert(newPos);
      return await getPosition(symbol);
    }

    // Existing position logic
    if (side == 'BUY') {
      if (existing.quantity > 0) {
        // Adding to long: weighted average
        final newQty = existing.quantity + quantity;
        final totalCost = (existing.quantity * existing.averagePrice) + (quantity * price);
        final newAvg = totalCost / newQty;
        await _db.update(_db.positions).replace(existing.copyWith(
          quantity: newQty,
          averagePrice: newAvg,
          currentPrice: price,
        ));
      } else {
        // Covering short: reduce short or flip to long
        final remaining = existing.quantity + quantity; // less negative
        if (remaining < 0) {
          await _db.update(_db.positions).replace(existing.copyWith(
            quantity: remaining,
            averagePrice: (existing.quantity.abs() * existing.averagePrice + quantity * price) / remaining.abs(),
            currentPrice: price,
          ));
        } else if (remaining == 0) {
          await _db.update(_db.positions).replace(existing.copyWith(
            quantity: 0,
            currentPrice: price,
            isActive: false,
            closedAt: Value(DateTime.now()),
          ));
        } else {
          // Covered and went long
          await _db.update(_db.positions).replace(existing.copyWith(
            quantity: remaining,
            averagePrice: price,
            currentPrice: price,
          ));
        }
      }
    } else {
      // SELL side
      if (existing.quantity > 0) {
        // Selling long: reduce or close
        final remaining = existing.quantity - quantity;
        if (remaining > 0) {
          await _db.update(_db.positions).replace(existing.copyWith(
            quantity: remaining,
            currentPrice: price,
          ));
        } else if (remaining == 0) {
          await _db.update(_db.positions).replace(existing.copyWith(
            quantity: 0,
            currentPrice: price,
            isActive: false,
            closedAt: Value(DateTime.now()),
          ));
        } else {
          // Oversell → short
          await _db.update(_db.positions).replace(existing.copyWith(
            quantity: remaining, // This should be negative now
            averagePrice: price,
            currentPrice: price,
          ));
        }
      } else {
        // Adding to short: average down/up
        final newQty = existing.quantity - quantity; // more negative
        final newAvg = (existing.quantity.abs() * existing.averagePrice + quantity * price) / newQty.abs();
        await _db.update(_db.positions).replace(existing.copyWith(
          quantity: newQty,
          averagePrice: newAvg,
          currentPrice: price,
        ));
      }
    }

    return await getPosition(symbol);
  }

  Future<void> closePosition(String id, double exitPrice) async {
    await (_db.update(_db.positions)..where((t) => t.id.equals(id))).write(
      PositionsCompanion(
        currentPrice: Value(exitPrice),
        isActive: const Value(false),
        closedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> updatePositionPrice(String symbol, double currentPrice) async {
    await (_db.update(_db.positions)..where((t) => t.symbol.equals(symbol))).write(
      PositionsCompanion(currentPrice: Value(currentPrice)),
    );
  }
}
