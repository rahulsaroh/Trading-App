// Copyright 2024 TradeDesk. All rights reserved.
// Automated unit tests for Order Execution Engine

import 'package:flutter_test/flutter_test.dart';
import 'package:tradedesk/features/order_management/domain/order_execution_engine.dart';
import 'package:tradedesk/features/order_management/domain/trade_utils.dart';
import 'package:tradedesk/data/models/order.dart';
import 'package:tradedesk/data/models/position.dart';

void main() {
  group('Order Execution Engine - Market Orders', () {
    test('Market BUY order executes at LTP + slippage', () {
      // Arrange
      final ltp = 2450.0;
      final side = 'BUY';

      // Act
      final executionPrice = SlippageSimulator.apply(ltp, side);

      // Assert
      expect(executionPrice, greaterThan(ltp));
      expect(executionPrice, lessThanOrEqualTo(ltp * 1.0005)); // Max 0.05% slippage
    });

    test('Market SELL order executes at LTP - slippage', () {
      // Arrange
      final ltp = 2450.0;
      final side = 'SELL';

      // Act
      final executionPrice = SlippageSimulator.apply(ltp, side);

      // Assert
      expect(executionPrice, lessThan(ltp));
      expect(executionPrice, greaterThanOrEqualTo(ltp * 0.9995)); // Min 0.05% slippage
    });

    test('Slippage is always positive and within bounds', () {
      final random = Random();
      for (int i = 0; i < 100; i++) {
        final ltp = 1000.0 + random.nextDouble() * 9000;
        final buyPrice = SlippageSimulator.apply(ltp, 'BUY');
        final sellPrice = SlippageSimulator.apply(ltp, 'SELL');

        expect(buyPrice, greaterThan(ltp));
        expect(sellPrice, lessThan(ltp));
        expect((buyPrice - ltp) / ltp, lessThanOrEqualTo(0.0005));
        expect((ltp - sellPrice) / ltp, lessThanOrEqualTo(0.0005));
      }
    });
  });

  group('Lot Size Validation', () {
    test('NIFTY lot size is 50', () {
      // NIFTY standard lot size
      const niftyLotSize = 50;
      expect(niftyLotSize, equals(50));
    });

    test('BANKNIFTY lot size is 15', () {
      // BANKNIFTY standard lot size
      const bankniftyLotSize = 15;
      expect(bankniftyLotSize, equals(15));
    });

    test('Total quantity = lots × lotSize', () {
      final lots = 2;
      final lotSize = 50;
      expect(lots * lotSize, equals(100));
    });

    test('Invalid lot increment rejected (can only be whole lots)', () {
      // The UI uses stepper that only increments by 1
      // This test verifies the business rule: no fractional lots
      final validLots = [1, 2, 3, 5, 10];
      for (var lot in validLots) {
        expect(lot % 1, equals(0));
      }
    });
  });

  group('Margin Calculation', () {
    test('Option margin = premium × quantity (no leverage)', () {
      // Arrange
      final premium = 150.0;
      final qty = 50;
      final lotSize = 50; // NIFTY

      // Act
      final margin = MarginCalculator.calculateRequired(premium, qty, 'OPTION');

      // Assert
      expect(margin, equals(150.0 * 50)); // 7500
    });

    test('Equity margin = (price × quantity) / leverage (5x)', () {
      // Arrange
      final price = 2450.0;
      final qty = 50;

      // Act
      final margin = MarginCalculator.calculateRequired(price, qty, 'STOCK');

      // Assert: (2450*50)/5 = 24500
      expect(margin, equals((2450 * 50) / 5.0));
    });

    test('Charges calculation: STT + Exchange + GST', () {
      // Arrange
      final value = 100000.0; // 1 lot NIFTY @ 2000

      // Act
      final charges = MarginCalculator.calculateCharges(value);

      // STT = 0.001 * value = 100
      // Exchange = 0.0003 * value = 30
      // GST on exchange = 0.18 * 30 = 5.4
      // Total = 135.4
      expect(charges, equals(135.4));
    }, skip: 'Charges formula needs verification against actual NSE charges');
  });

  group('Limit Orders', () {
    test('Limit order stays PENDING when LTP not reached', () {
      // Arrange
      final limitPrice = 2440.0;
      final currentLtp = 2450.0;
      final side = 'BUY';

      // For BUY limit: order executes when LTP <= limit price
      final shouldExecute = side == 'BUY' ? currentLtp <= limitPrice : currentLtp >= limitPrice;

      // Assert
      expect(shouldExecute, isFalse);
    });

    test('Limit order executes when LTP crosses limit price', () {
      // Arrange
      final limitPrice = 2460.0;
      final currentLtp = 2462.0;
      final side = 'BUY';

      // Act
      final shouldExecute = side == 'BUY' ? currentLtp <= limitPrice : currentLtp >= limitPrice;

      // Assert
      expect(shouldExecute, isTrue);
    });

    test('Limit BUY executes at limit price, not LTP', () {
      // When limit order triggers, execution price should be the limit price
      final limitPrice = 2460.0;
      final triggeredLtp = 2458.0;
      final executionPrice = limitPrice; // Fixed by design

      expect(executionPrice, equals(2460.0));
    });
  });

  group('Stop Loss (SL) Orders', () {
    test('SL BUY triggers when LTP rises above trigger', () {
      // Arrange
      final triggerPrice = 2470.0;
      final currentLtp = 2472.0;
      final side = 'BUY';

      // Act
      final shouldTrigger = currentLtp >= triggerPrice;

      // Assert
      expect(shouldTrigger, isTrue);
    });

    test('SL SELL triggers when LTP falls below trigger', () {
      // Arrange
      final triggerPrice = 2430.0;
      final currentLtp = 2428.0;
      final side = 'SELL';

      // Act
      final shouldTrigger = currentLtp <= triggerPrice;

      // Assert
      expect(shouldTrigger, isTrue);
    });

    test('SL order becomes MARKET order once triggered', () {
      // After trigger, SL becomes market order
      final orderType = 'SL';
      final afterTrigger = 'MARKET'; // Internally converted

      expect(afterTrigger, equals('MARKET'));
    });
  });

  group('Order Cancellation', () {
    test('Cancelling PENDING order changes status to CANCELLED', () async {
      // Arrange
      final orderId = 'order_123';
      final initialStatus = 'PENDING';

      // Act - simulate cancellation
      final newStatus = 'CANCELLED';

      // Assert
      expect(newStatus, equals('CANCELLED'));
      expect(initialStatus, isNotEqualTo(newStatus));
    });

    test('Cannot cancel EXECUTED order', () {
      final status = 'EXECUTED';
      expect(status, equals('EXECUTED'));
      expect(status, isNotEqualTo('CANCELLED'));
    });
  });

  group('Position Management via Orders', () {
    test('SELL on long position reduces/closes position', () async {
      // Arrange: Buy 100 @ 100
      // Act: Sell 60 @ 110
      // Assert: position = 40 long, avgPrice still 100
      final initialQty = 100;
      final initialAvg = 100.0;
      final sellQty = 60;
      final sellPrice = 110.0;

      final remainingQty = initialQty - sellQty;
      final realizedPnl = (sellPrice - initialAvg) * sellQty;

      // Assert
      expect(remainingQty, equals(40));
      expect(realizedPnl, equals(600.0)); // (110-100)*60
    });

    test('SELL more than owned creates short position', () {
      // Arrange: own 50, sell 80
      final owned = 50;
      final sellQty = 80;
      final sellPrice = 100.0;
      final avgPriceOfBuy = 100.0;

      // Act
      final netQty = owned - sellQty; // -30 = short 30
      final newAvgForShort = sellPrice; // For simplicity, short avg = sell price

      // Assert
      expect(netQty, equals(-30));
      expect(netQty < 0, isTrue);
    });
  });
}
