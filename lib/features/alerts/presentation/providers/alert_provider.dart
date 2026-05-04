import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart';
import '../../../../core/database/database_provider.dart';
import '../../../../data/datasources/app_database.dart';

part 'alert_provider.g.dart';

@riverpod
class AlertState extends _$AlertState {
  @override
  Future<List<dynamic>> build() async {
    final db = ref.watch(appDatabaseProvider);
    return (db.select(db.alerts)..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)])).get();
  }

  Future<void> addAlert(String symbol, String type, double value) async {
    final db = ref.watch(appDatabaseProvider);
    await db.into(db.alerts).insert(AlertsCompanion.insert(
      symbol: symbol,
      type: type,
      targetValue: value,
      createdAt: DateTime.now(),
    ));
    ref.invalidateSelf();
  }

  Future<void> toggleAlert(int id, bool active) async {
    final db = ref.watch(appDatabaseProvider);
    await (db.update(db.alerts)..where((t) => t.id.equals(id))).write(AlertsCompanion(isActive: Value(active)));
    ref.invalidateSelf();
  }

  Future<void> deleteAlert(int id) async {
    final db = ref.watch(appDatabaseProvider);
    await (db.delete(db.alerts)..where((t) => t.id.equals(id))).go();
    ref.invalidateSelf();
  }
}

@riverpod
class AlertEngine extends _$AlertEngine {
  Timer? _timer;

  @override
  void build() {
    ref.onDispose(() => _timer?.cancel());
    
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      _checkAlerts();
    });
  }

  Future<void> _checkAlerts() async {
    final alertsAsync = ref.read(alertStateProvider);
    if (alertsAsync is AsyncData) {
      final activeAlerts = alertsAsync.value!.where((a) => a.isActive).toList();
      if (activeAlerts.isEmpty) return;
      // Alert checking logic
    }
  }
}
