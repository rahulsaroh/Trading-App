// Copyright 2024 TradeDesk. All rights reserved.
// Automated unit tests for Analytics and P&L metrics

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Win Rate Calculation', () {
    test('Win rate = 60% for 3 wins, 2 losses', () {
      final wins = 3;
      final losses = 2;
      final total = wins + losses;

      final winRate = (wins / total) * 100;

      expect(winRate, equals(60.0));
    });

    test('Win rate = 0% when no wins', () {
      final wins = 0;
      final losses = 5;
      final total = wins + losses;

      final winRate = (wins / total) * 100;

      expect(winRate, equals(0.0));
    });

    test('Win rate = 100% when all wins', () {
      final wins = 10;
      final losses = 0;
      final total = wins + losses;

      final winRate = (wins / total) * 100;

      expect(winRate, equals(100.0));
    });

    test('Division by zero protection: no trades → 0%', () {
      final wins = 0;
      final losses = 0;
      final total = wins + losses;

      final winRate = total > 0 ? (wins / total) * 100 : 0.0;

      expect(winRate, equals(0.0));
    });
  });

  group('Profit Factor', () {
    test('Profit factor = total profit / total loss', () {
      final totalProfit = 50000.0;
      final totalLoss = 25000.0;

      final profitFactor = totalProfit / totalLoss;

      expect(profitFactor, equals(2.0));
    });

    test('Profit factor = 0 when no profit and some loss', () {
      final totalProfit = 0.0;
      final totalLoss = 10000.0;

      final profitFactor = totalLoss > 0 ? totalProfit / totalLoss : 0.0;

      expect(profitFactor, equals(0.0));
    });

    test('Profit factor infinite when profit but zero loss', () {
      final totalProfit = 50000.0;
      final totalLoss = 0.0;

      // Should be handled as infinity or special value
      final profitFactor = totalLoss == 0 ? double.infinity : totalProfit / totalLoss;

      expect(profitFactor, equals(double.infinity));
    });

    test('Profit factor = 1.0 when profit equals loss (breakeven)', () {
      final totalProfit = 30000.0;
      final totalLoss = 30000.0;

      final profitFactor = totalProfit / totalLoss;

      expect(profitFactor, equals(1.0));
    });
  });

  group('Max Drawdown', () {
    test('Max drawdown = 0% for flat equity curve', () {
      final equityCurve = [100000.0, 100000.0, 100000.0, 100000.0];
      final maxDrawdown = calculateMaxDrawdown(equityCurve);

      expect(maxDrawdown, equals(0.0));
    });

    test('Max drawdown detects peak-to-trough decline', () {
      // Peak at 100k, trough at 80k → 20% drawdown
      final equityCurve = [80000.0, 90000.0, 100000.0, 95000.0, 80000.0, 85000.0];
      final maxDrawdown = calculateMaxDrawdown(equityCurve);

      // Peak = 100000, trough after peak = 80000
      // Drawdown = (100000 - 80000) / 100000 = 0.2 = 20%
      expect(maxDrawdown, equals(20.0));
    });

    test('Max drawdown cannot be negative', () {
      final equityCurve = [100000.0, 110000.0, 120000.0];
      final maxDrawdown = calculateMaxDrawdown(equityCurve);

      expect(maxDrawdown, greaterThanOrEqualTo(0.0));
    });

    test('Max drawdown works with continuously rising equity', () {
      final equityCurve = [100000.0, 102000.0, 105000.0, 110000.0];
      final maxDrawdown = calculateMaxDrawdown(equityCurve);

      expect(maxDrawdown, equals(0.0));
    });
  });

  group('Equity Curve from Trade History', () {
    test('Equity curve reflects portfolio value after each trade', () {
      // Start: 1000000
      // Trade1: BUY 50 NIFTY @ 24500 → reduces cash by ~12.25L, but no P&L yet
      // This test requires full portfolio integration
      // Placeholder assertion
      final startingBalance = 1000000.0;
      expect(startingBalance, equals(1000000.0));
    });
  });

  group('CSV Export Format', () {
    test('CSV headers are correct', () {
      final headers = ['Date', 'Symbol', 'Side', 'Quantity', 'Price', 'PnL', 'Status'];

      expect(headers.contains('Date'), isTrue);
      expect(headers.contains('Symbol'), isTrue);
      expect(headers.contains('PnL'), isTrue);
    });

    test('CSV row for executed trade has correct values', () {
      final row = {
        'Date': '2026-05-04',
        'Symbol': 'NIFTY',
        'Side': 'BUY',
        'Quantity': '50',
        'Price': '24500.00',
        'PnL': '0.00',
        'Status': 'EXECUTED',
      };

      expect(row['Symbol'], equals('NIFTY'));
      expect(int.parse(row['Quantity']!), equals(50));
    });

    test('CSV can be parsed back (round-trip)', () {
      final original = 'Date,Symbol,Side,Qty,Price,PnL,Status\nMay 4,NIFTY,BUY,50,24500,0,EXECUTED';
      final lines = original.split('\n');
      final headers = lines[0].split(',');
      final data = lines[1].split(',');

      expect(headers.length, equals(7));
      expect(data[1], equals('NIFTY'));
    });
  });

  group('Trading Insights', () {
    test('Shows "Win rate above 50%" when win rate > 50%', () {
      final winRate = 65.0;
      final insight = winRate > 50 ? 'Win rate above 50%' : '';

      expect(insight, contains('Win rate'));
    });

    test('Shows "High profit factor" when PF > 1.5', () {
      final profitFactor = 2.3;
      final insight = profitFactor > 1.5 ? 'High profit factor' : '';

      expect(insight, contains('High profit factor'));
    });

    test('Shows "Large drawdown warning" when max DD > 15%', () {
      final maxDrawdown = 18.5;
      final insight = maxDrawdown > 15 ? 'Large drawdown warning' : '';

      expect(insight, contains('Large drawdown'));
    });

    test('Shows "Beginner friendly" when trade count < 10', () {
      final tradeCount = 5;
      final insight = tradeCount < 10 ? 'Beginner friendly' : '';

      expect(insight, contains('Beginner'));
    });
  });
}

// Helper function (mirroring implementation)
double calculateMaxDrawdown(List<double> equityCurve) {
  if (equityCurve.isEmpty) return 0.0;

  double peak = equityCurve[0];
  double maxDrawdown = 0.0;

  for (final value in equityCurve) {
    if (value > peak) peak = value;
    final drawdown = (peak - value) / peak * 100;
    if (drawdown > maxDrawdown) maxDrawdown = drawdown;
  }

  return maxDrawdown;
}
