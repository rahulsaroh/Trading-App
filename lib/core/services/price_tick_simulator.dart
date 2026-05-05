import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';

class PriceTickSimulator {
  static final PriceTickSimulator _instance = PriceTickSimulator._internal();
  factory PriceTickSimulator() => _instance;
  PriceTickSimulator._internal();

  final Map<String, double> _basePrices = {};
  final Map<String, StreamController<Map<String, double>>> _controllers = {};
  Timer? _tickTimer;
  final Random _random = Random();

  // CRITICAL FIX: Seed with REAL prices from API before starting
  Future<void> seedPrices(Map<String, double> realPrices) async {
    _basePrices.addAll(realPrices);
    debugPrint('[Simulator] Seeded with ${realPrices.length} real prices');
    if (realPrices.containsKey('NIFTY 50')) {
       debugPrint('[Simulator] NIFTY seed: ${realPrices['NIFTY 50']}');
    }
  }

  void startSimulation() {
    _tickTimer?.cancel();
    if (_basePrices.isEmpty) {
      debugPrint('[Simulator] WARNING: No seed prices! Add real data first.');
      return;
    }
    
    _tickTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      final updates = <String, double>{};
      for (final entry in _basePrices.entries) {
        // Small random walk ±0.05% per tick
        final change = ((_random.nextDouble() - 0.5) * 2) * 0.0005;
        // Occasional larger move (1 in 20 ticks) ±0.3%
        final extraMove = _random.nextInt(20) == 0
            ? ((_random.nextDouble() - 0.5) * 2) * 0.003
            : 0.0;
        _basePrices[entry.key] = entry.value * (1 + change + extraMove);
        updates[entry.key] = _basePrices[entry.key]!;
      }
      for (final ctrl in _controllers.values) {
        if (!ctrl.isClosed) ctrl.add(updates);
      }
    });
  }

  Stream<Map<String, double>> get priceStream {
    final id = DateTime.now().millisecondsSinceEpoch.toString();
    final ctrl = StreamController<Map<String, double>>.broadcast();
    _controllers[id] = ctrl;
    return ctrl.stream;
  }

  void dispose() {
    _tickTimer?.cancel();
    for (final c in _controllers.values) c.close();
    _controllers.clear();
  }
}
