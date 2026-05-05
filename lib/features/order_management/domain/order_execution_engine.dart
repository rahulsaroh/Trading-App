import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart';
import '../../../core/database/database_provider.dart';
import '../../../data/datasources/app_database.dart';
import '../../../data/repositories/portfolio_repository.dart';
import '../../../data/repositories/order_repository.dart';
import '../../../data/repositories/position_repository.dart';
import 'trade_utils.dart';

part 'order_execution_engine.g.dart';

@riverpod
class OrderExecutionEngine extends _$OrderExecutionEngine {
  late final PortfolioRepository _portfolioRepo;
  late final OrderRepository _orderRepo;
  late final PositionRepository _positionRepo;

  @override
  FutureOr<void> build() {
    final db = ref.watch(appDatabaseProvider);
    _portfolioRepo = PortfolioRepository(db);
    _orderRepo = OrderRepository(db);
    _positionRepo = PositionRepository(db);
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
      
      // Calculate cash delta: BUY=negative, SELL=positive
      final cashDelta = side == 'BUY' 
          ? -(totalCost + charges)  // Pay money + charges
          : (totalCost - charges);  // Receive money minus charges

      final portfolio = await _portfolioRepo.getPortfolio();
      if (side == 'BUY' && portfolio.cashBalance < (totalCost + charges)) {
        throw Exception('Insufficient Funds');
      }

      // 1. Record order
      final orderId = DateTime.now().millisecondsSinceEpoch.toString();
      await _orderRepo.placeOrder(OrdersCompanion.insert(
        id: Value(orderId),
        symbol: symbol,
        side: side,
        orderType: 'MARKET',
        productType: 'INTRADAY',
        price: executionPrice,
        quantity: quantity,
        filledQuantity: Value(quantity.toDouble()),
        averagePrice: Value(executionPrice),
        status: 'EXECUTED',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        executedAt: Value(DateTime.now()),
      ));

      // 2. Update portfolio balance
      await _portfolioRepo.updateBalance(cashDelta);

      // 3. Update/create position
      await _positionRepo.updatePositionOnOrder(
        symbol: symbol,
        side: side,
        quantity: quantity,
        price: executionPrice,
        name: symbol,
      );

      state = const AsyncData(null);
      return true;
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      return false;
    }
  }
}
