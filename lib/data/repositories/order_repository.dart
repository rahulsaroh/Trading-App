import 'package:drift/drift.dart';
import '../datasources/app_database.dart';

class OrderRepository {
  final AppDatabase _db;

  OrderRepository(this._db);

  Future<int> placeOrder(OrdersCompanion order) => _db.into(_db.orders).insert(order);

  Future<List<Order>> getPendingOrders() {
    return (_db.select(_db.orders)..where((t) => t.status.equals('PENDING'))).get();
  }

  Future<void> updateOrderStatus(String id, String status, {double? avgPrice}) async {
    await (_db.update(_db.orders)..where((t) => t.id.equals(id))).write(
      OrdersCompanion(
        status: Value(status),
        averagePrice: avgPrice != null ? Value(avgPrice) : const Value.absent(),
        executedAt: Value(DateTime.now()),
      ),
    );
  }
}
