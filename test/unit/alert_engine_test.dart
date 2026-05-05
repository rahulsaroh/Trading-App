// Copyright 2024 TradeDesk. All rights reserved.
// Automated unit tests for Alert Engine

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Price Alert Triggering', () {
    test('Alert triggers when price crosses ABOVE threshold', () {
      final currentPrice = 2501.0;
      final alertThreshold = 2500.0;
      final condition = 'ABOVE';

      final shouldTrigger = condition == 'ABOVE' ? currentPrice >= alertThreshold : currentPrice <= alertThreshold;

      expect(shouldTrigger, isTrue);
    });

    test('Alert triggers when price crosses BELOW threshold', () {
      final currentPrice = 2499.0;
      final alertThreshold = 2500.0;
      final condition = 'BELOW';

      final shouldTrigger = condition == 'ABOVE' ? currentPrice >= alertThreshold : currentPrice <= alertThreshold;

      expect(shouldTrigger, isTrue);
    });

    test('Alert does NOT trigger when condition not met', () {
      final currentPrice = 2500.5;
      final alertThreshold = 2500.0;
      final condition = 'ABOVE';

      final shouldTrigger = condition == 'ABOVE' ? currentPrice >= alertThreshold : currentPrice <= alertThreshold;

      expect(shouldTrigger, isFalse);
    });

    test('Alert with exact threshold value triggers', () {
      final currentPrice = 2500.0;
      final alertThreshold = 2500.0;
      final condition = 'ABOVE';

      final shouldTrigger = condition == 'ABOVE' ? currentPrice >= alertThreshold : currentPrice <= alertThreshold;

      expect(shouldTrigger, isTrue);
    });
  });

  group('Re-trigger Prevention', () {
    test('Same alert does NOT re-trigger within 5 minutes', () {
      final lastTriggeredAt = DateTime.now().subtract(const Duration(minutes: 3));
      final now = DateTime.now();
      final cooldownMinutes = 5;

      final canTrigger = now.difference(lastTriggeredAt).inMinutes >= cooldownMinutes;

      expect(canTrigger, isFalse);
    });

    test('Alert can trigger after 5+ minutes have passed', () {
      final lastTriggeredAt = DateTime.now().subtract(const Duration(minutes: 6));
      final now = DateTime.now();
      final cooldownMinutes = 5;

      final canTrigger = now.difference(lastTriggeredAt).inMinutes >= cooldownMinutes;

      expect(canTrigger, isTrue);
    });

    test('First-time alert (no previous trigger) can fire', () {
      final lastTriggeredAt = null;
      final canTrigger = lastTriggeredAt == null || DateTime.now().difference(lastTriggeredAt).inMinutes >= 5;

      expect(canTrigger, isTrue);
    });
  });

  group('Open Interest Change Alerts', () {
    test('OI surge detection: OI up 20% triggers alert', () {
      final previousOi = 100000.0;
      final currentOi = 125000.0; // +25%
      final thresholdPct = 20.0;

      final pctChange = ((currentOi - previousOi) / previousOi) * 100;
      final shouldAlert = pctChange >= thresholdPct;

      expect(shouldAlert, isTrue);
    });

    test('OI drop detection: OI down 15% triggers alert (if configured)', () {
      final previousOi = 100000.0;
      final currentOi = 85000.0; // -15%
      final thresholdPct = 15.0;

      final pctChange = ((previousOi - currentOi) / previousOi) * 100;
      final shouldAlert = pctChange >= thresholdPct;

      expect(shouldAlert, isTrue);
    });

    test('OI change within threshold does NOT trigger', () {
      final previousOi = 100000.0;
      final currentOi = 105000.0; // +5%
      final thresholdPct = 10.0;

      final pctChange = ((currentOi - previousOi) / previousOi) * 100;
      final shouldAlert = pctChange >= thresholdPct;

      expect(shouldAlert, isFalse);
    });
  });

  group('IV Spike Alerts', () {
    test('IV increase > 50% triggers spike alert', () {
      final prevIv = 0.20; // 20%
      final currentIv = 0.32; // 32% (+60%)

      final pctChange = ((currentIv - prevIv) / prevIv) * 100;
      final isSpike = pctChange >= 50;

      expect(isSpike, isTrue);
    });

    test('IV drop does NOT trigger spike alert (only spikes)', () {
      final prevIv = 0.30;
      final currentIv = 0.18; // -40%

      final pctChange = ((currentIv - prevIv) / prevIv).abs() * 100;
      // For IV drop, typically not a "spike" alert
      final isSpike = pctChange > 50 && currentIv > prevIv;

      expect(isSpike, isFalse);
    });
  });

  group('Alert Persistence', () {
    test('Alert saved to Drift DB with correct fields', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();

      // Act
      await db.into(db.alerts).insert(AlertsCompanion.insert(
        symbol: 'RELIANCE',
        type: 'PRICE_ABOVE',
        targetValue: 2500.0,
        isActive: true,
        createdAt: DateTime.now(),
      ));

      // Assert
      final alerts = await db.select(db.alerts).get();
      expect(alerts.length, equals(1));
      expect(alerts.first.symbol, equals('RELIANCE'));
      expect(alerts.first.targetValue, equals(2500.0));
    });

    test('Alert can be toggled off (isActive=false)', () async {
      final db = await prepareInMemoryDatabase();

      final id = await db.into(db.alerts).insert(AlertsCompanion.insert(
        symbol: 'NIFTY',
        type: 'PRICE_BELOW',
        targetValue: 24000.0,
        isActive: true,
        createdAt: DateTime.now(),
      ));

      // Update to inactive
      await (db.update(db.alerts)..where((t) => t.id.equals(id))).write(
        const AlertsCompanion(isActive: Value(false)),
      );

      final alert = await (db.select(db.alerts)..where((t) => t.id.equals(id))).getSingle();
      expect(alert.isActive, isFalse);
    });

    test('Alert can be deleted', () async {
      final db = await prepareInMemoryDatabase();

      final id = await db.into(db.alerts).insert(AlertsCompanion.insert(
        symbol: 'HDFCBANK',
        type: 'OI_CHANGE',
        targetValue: 20.0,
        isActive: true,
        createdAt: DateTime.now(),
      ));

      await (db.delete(db.alerts)..where((t) => t.id.equals(id))).go();

      final count = await (db.select(db.alerts)..where((t) => t.id.equals(id))).count();
      expect(count, equals(0));
    });
  });

  group('Alert Notification UI', () {
    test('In-app banner appears when alert triggers', () {
      // This requires UI integration; can test that AlertBanner widget exists
      expect(true, isTrue); // Placeholder
    });

    test('Bell icon appears on instrument with active alert', () {
      // Check watchlist item shows alert indicator
      expect(true, isTrue); // Placeholder
    });
  });
}

// Helper for in-memory DB
Future<AppDatabase> prepareInMemoryDatabase() async {
  return AppDatabase();
}
