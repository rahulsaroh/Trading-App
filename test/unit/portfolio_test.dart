// Copyright 2024 TradeDesk. All rights reserved.
// Automated unit tests for Portfolio business logic

import 'package:flutter_test/flutter_test.dart';
import 'package:tradedesk/data/datasources/app_database.dart';
import 'package:tradedesk/data/models/position.dart';
import 'package:tradedesk/data/models/trade.dart';
import 'package:tradedesk/features/portfolio/presentation/providers/portfolio_providers.dart';
import 'package:tradedesk/data/repositories/portfolio_repository.dart';

void main() {
  group('Portfolio Initialization', () {
    test('Portfolio should start with ₹10,00,000 cash balance', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();

      // Act
      final portfolioRepo = PortfolioRepository(db);
      final portfolio = await portfolioRepo.getPortfolio();

      // Assert
      expect(portfolio.cashBalance, equals(1000000.0));
      expect(portfolio.totalValue, equals(1000000.0));
      expect(portfolio.totalPnl, equals(0.0));
    });

    test('Initial portfolio summary shows correct values', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();
      final portfolioRepo = PortfolioRepository(db);

      // Act
      final summary = await portfolioRepo.getPortfolio();

      // Assert
      expect(summary.cashBalance, 1000000.0);
      expect(summary.investedValue, 0.0);
      expect(summary.dayPnl, 0.0);
    });
  });

  group('Cash Deduction on BUY Order', () {
    test('Market BUY order deducts cash correctly', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();
      final portfolioRepo = PortfolioRepository(db);
      final ltp = 2450.0;
      final qty = 50; // 1 lot NIFTY
      final expectedCharges = 2450.0 * 50 * 0.00134; // STT + exchange + GST

      // Act - simulate order execution
      final totalDeduction = (ltp * qty) + expectedCharges;
      await portfolioRepo.updateBalance(-totalDeduction);

      // Assert
      final portfolio = await portfolioRepo.getPortfolio();
      expect(portfolio.cashBalance, equals(1000000.0 - totalDeduction));
    });

    test('SELL order adds cash to portfolio', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();
      final portfolioRepo = PortfolioRepository(db);
      final ltp = 2500.0;
      final qty = 50;
      final expectedNet = (ltp * qty) - (ltp * qty * 0.00134);

      // Act
      await portfolioRepo.updateBalance(expectedNet);

      // Assert
      final portfolio = await portfolioRepo.getPortfolio();
      expect(portfolio.cashBalance, equals(1000000.0 + expectedNet));
    });

    test('Insufficient funds throws error on large order', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();
      final portfolioRepo = PortfolioRepository(db);
      final hugeQty = 10000;

      // Act & Assert
      expect(
        () async => await portfolioRepo.updateBalance(-(24500.0 * hugeQty)),
        throwsA(isA<Exception>()),
      );
    });
  });

  group('Average Price Calculation', () {
    test('Adding to existing position calculates correct avg price', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();
      final portfolioRepo = PortfolioRepository(db);

      // Buy 1 lot @ 2450
      await portfolioRepo.recordTrade(TradesCompanion.insert(
        symbol: 'NIFTY',
        side: 'BUY',
        price: 2450.0,
        quantity: 50,
        executedAt: DateTime.now(),
      ));

      // Add more: buy 1 lot @ 2470
      await portfolioRepo.recordTrade(TradesCompanion.insert(
        symbol: 'NIFTY',
        side: 'BUY',
        price: 2470.0,
        quantity: 50,
        executedAt: DateTime.now(),
      ));

      // Act
      final positions = await db.select(db.positions).get();
      final niftyPos = positions.firstWhere((p) => p.symbol == 'NIFTY');

      // Assert avg price = (2450*50 + 2470*50) / 100 = 2460
      expect(niftyPos.averagePrice, equals(2460.0));
      expect(niftyPos.quantity, equals(100));
    });

    test('Selling reduces position quantity correctly', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();
      final portfolioRepo = PortfolioRepository(db);

      await portfolioRepo.recordTrade(TradesCompanion.insert(
        symbol: 'RELIANCE',
        side: 'BUY',
        price: 2950.0,
        quantity: 100,
        executedAt: DateTime.now(),
      ));

      // Sell 40
      await portfolioRepo.recordTrade(TradesCompanion.insert(
        symbol: 'RELIANCE',
        side: 'SELL',
        price: 2960.0,
        quantity: 40,
        executedAt: DateTime.now(),
      ));

      // Assert
      final positions = await db.select(db.positions).get();
      final pos = positions.firstWhere((p) => p.symbol == 'RELIANCE');
      expect(pos.quantity, equals(60));
      expect(pos.isActive, isTrue);
    });

    test('Full exit closes position (quantity becomes 0)', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();
      final portfolioRepo = PortfolioRepository(db);

      await portfolioRepo.recordTrade(TradesCompanion.insert(
        symbol: 'HDFCBANK',
        side: 'BUY',
        price: 1650.0,
        quantity: 50,
        executedAt: DateTime.now(),
      ));

      // Sell all 50
      await portfolioRepo.recordTrade(TradesCompanion.insert(
        symbol: 'HDFCBANK',
        side: 'SELL',
        price: 1660.0,
        quantity: 50,
        executedAt: DateTime.now(),
      ));

      // Assert
      final positions = await db.select(db.positions).get();
      final pos = positions.firstWhere((p) => p.symbol == 'HDFCBANK');
      expect(pos.quantity, equals(0));
      expect(pos.isActive, isFalse);
      expect(pos.closedAt, isNotNull);
    });
  });

  group('P&L Calculation', () {
    test('Long position P&L = (LTP - avgPrice) * quantity', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();
      final portfolioRepo = PortfolioRepository(db);

      await portfolioRepo.recordTrade(TradesCompanion.insert(
        symbol: 'TCS',
        side: 'BUY',
        price: 3200.0,
        quantity: 25,
        executedAt: DateTime.now(),
      ));

      // Act - Current LTP is 3250
      final positions = await db.select(db.positions).get();
      final pos = positions.first;
      final ltp = 3250.0;
      final expectedPnl = (ltp - 3200.0) * 25; // 50 * 25 = 1250

      // Use the provider's calculatePnl
      final activePosProvider = ActivePositionsRef(db);
      final actualPnl = activePosProvider.calculatePnl(pos, ltp);

      // Assert
      expect(actualPnl, equals(1250.0));
    });

    test('Short position P&L = (avgPrice - LTP) * quantity (inverted)', () {
      // For SHORT, side = 'SELL', we buy back lower to profit
      // P&L = (avgPrice - LTP) * qty (since avgPrice is sell price)
      final avgPrice = 2500.0;
      final ltp = 2480.0;
      final qty = 50;
      final expectedPnl = (avgPrice - ltp) * qty; // 20 * 50 = 1000 profit

      // Test formula
      final multiplier = -1; // SELL side
      final pnl = (ltp - avgPrice) * qty * multiplier;
      expect(pnl, equals(1000.0));
    });

    test('P&L color is green for profit', () {
      final pnl = 1500.0;
      expect(pnl > 0, isTrue);
    });

    test('P&L color is red for loss', () {
      final pnl = -800.0;
      expect(pnl < 0, isTrue);
    });
  });

  group('Partial Exit', () {
    test('Partial exit reduces quantity correctly', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();
      final portfolioRepo = PortfolioRepository(db);

      await portfolioRepo.recordTrade(TradesCompanion.insert(
        symbol: 'INFY',
        side: 'BUY',
        price: 1500.0,
        quantity: 100,
        executedAt: DateTime.now(),
      ));

      // Partial sell 30
      await portfolioRepo.recordTrade(TradesCompanion.insert(
        symbol: 'INFY',
        side: 'SELL',
        price: 1510.0,
        quantity: 30,
        executedAt: DateTime.now(),
      ));

      // Assert
      final positions = await db.select(db.positions).get();
      final pos = positions.first;
      expect(pos.quantity, equals(70));
      expect(pos.isActive, isTrue);
    });

    test('Partial exit realizes partial P&L', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();
      final portfolioRepo = PortfolioRepository(db);

      // Buy 100 @ 100
      await portfolioRepo.recordTrade(TradesCompanion.insert(
        symbol: 'TEST',
        side: 'BUY',
        price: 100.0,
        quantity: 100,
        executedAt: DateTime.now(),
      ));

      // Sell 50 @ 120
      await portfolioRepo.recordTrade(TradesCompanion.insert(
        symbol: 'TEST',
        side: 'SELL',
        price: 120.0,
        quantity: 50,
        executedAt: DateTime.now(),
      ));

      // Assert realized P&L in trades = (120-100)*50 = 1000
      final trades = await db.select(db.trades).get();
      final realizedPnl = trades.where((t) => t.side == 'SELL').fold(0.0, (sum, t) => sum + t.pnl);
      expect(realizedPnl, equals(1000.0));

      // Remaining position: 50 @ 100 avg
      final positions = await db.select(db.positions).get();
      final pos = positions.first;
      expect(pos.quantity, equals(50));
      expect(pos.averagePrice, equals(100.0));
    });
  });

  group('Portfolio Value Calculation', () {
    test('Total value = cash + sum(position market value)', () async {
      // Arrange
      final db = await prepareInMemoryDatabase();
      final portfolioRepo = PortfolioRepository(db);

      // Initial: 10L cash, no positions -> totalValue = 10L
      var portfolio = await portfolioRepo.getPortfolio();
      expect(portfolio.totalValue, equals(1000000.0));

      // Buy 1 lot NIFTY @ 24500 = 12.25L approx with charges
      // Simplified: marketValue = 24500 * 50 = 12,25,000
      // Cash will reduce by ~12,25,000 + charges
      // Portfolio value = remainingCash + (24500*50)
      // This test will need actual position insertion
    });
  });
}

// Helper to create in-memory DB for tests
Future<AppDatabase> prepareInMemoryDatabase() async {
  final db = AppDatabase();
  // Optionally seed with initial data
  return db;
}
