import 'dart:async';
import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final priceSimulatorProvider = Provider((ref) => PriceTickSimulator());

class TickData {
  final String symbol;
  final double ltp;
  final double change;
  final double changePct;
  final DateTime timestamp;

  TickData({
    required this.symbol,
    required this.ltp,
    required this.change,
    required this.changePct,
    required this.timestamp,
  });
}

class PriceTickSimulator {
  final _controller = StreamController<TickData>.broadcast();
  Stream<TickData> get tickStream => _controller.stream;
  
  final Map<String, double> _prices = {};
  Timer? _timer;

  void start(Map<String, double> initialPrices) {
    _prices.addAll(initialPrices);
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final random = Random();
      for (var entry in _prices.entries) {
        final symbol = entry.key;
        double currentPrice = entry.value;
        
        double move = (random.nextDouble() * 0.0016) - 0.0008; 
        if (random.nextInt(20) == 0) move = (random.nextDouble() * 0.006) - 0.003; 
        
        final newPrice = currentPrice * (1 + move);
        _prices[symbol] = newPrice;

        final change = newPrice - currentPrice;
        _controller.add(TickData(
          symbol: symbol,
          ltp: newPrice,
          change: change,
          changePct: (change / currentPrice) * 100,
          timestamp: DateTime.now(),
        ));
      }
    });
  }

  void stop() => _timer?.cancel();
}
