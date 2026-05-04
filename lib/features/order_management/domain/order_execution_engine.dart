import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart';
import '../../../core/database/database_provider.dart';
import '../../../data/datasources/app_database.dart';
import '../../../data/repositories/portfolio_repository.dart';
import '../../../data/repositories/order_repository.dart';
import 'trade_utils.dart';

part 'order_execution_engine.g.dart';

@riverpod
class OrderExecutionEngine extends _$OrderExecutionEngine {
  late final PortfolioRepository _portfolioRepo;
  late final OrderRepository _orderRepo;

  @override
  FutureOr<void> build() {
    final db = ref.watch(appDatabaseProvider);
    _portfolioRepo = PortfolioRepository(db);
    _orderRepo = OrderRepository(db);
  }

  Future<bool> executeMarketOrder({
    required String symbol,
    required String side,
    required int quantity,
    required double ltp,
    required String instrumentType,
  }) async {
    state = const AsyncLoading();
    
    try {
      final executionPrice = SlippageSimulator.apply(ltp, side);
      final totalCost = executionPrice * quantity;
      final charges = MarginCalculator.calculateCharges(totalCost);
      final totalDeduction = side == 'BUY' ? (totalCost + charges) : charges;

      final portfolio = await _portfolioRepo.getPortfolio();
      if (side == 'BUY' && portfolio.cashBalance < totalDeduction) {
        throw Exception('Insufficient Funds');
      }

      final orderId = DateTime.now().millisecondsSinceEpoch.toString();
      await _orderRepo.placeOrder(OrdersCompanion.insert(
        id: Value(orderId),
        symbol: symbol,
        side: side,
        orderType: 'MARKET',
        productType: 'INTRADAY',
        price: executionPrice,
        quantity: quantity,
        status: 'EXECUTED',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        executedAt: Value(DateTime.now()),
      ));

      await _portfolioRepo.updateBalance(-totalDeduction);
      
      state = const AsyncData(null);
      return true;
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      return false;
    }
  }
}
