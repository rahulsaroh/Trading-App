import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

part 'app_database.g.dart';

/// Stocks table
class Stocks extends Table {
  TextColumn get symbol => text()();
  TextColumn get name => text()();
  TextColumn get exchange => text()();
  RealColumn get currentPrice => real()();
  RealColumn get previousClose => real()();
  RealColumn get dayHigh => real()();
  RealColumn get dayLow => real()();
  RealColumn get volume => real()();
  RealColumn get marketCap => real()();
  TextColumn get sector => text()();
  TextColumn get industry => text()();
  RealColumn get peRatio => real()();
  RealColumn get pbRatio => real()();
  RealColumn get dividendYield => real()();
  RealColumn get beta => real()();
  RealColumn get fiftyTwoWeekHigh => real()();
  RealColumn get fiftyTwoWeekLow => real()();
  DateTimeColumn get lastUpdated => dateTime()();
  BoolColumn get isActive => boolean().withDefault(Constant(true))();

  @override
  Set<Column> get primaryKey => {symbol};
}

/// Options table
class OptionTable extends Table {
  TextColumn get symbol => text()();
  TextColumn get underlyingSymbol => text()();
  RealColumn get strikePrice => real()();
  TextColumn get type => text()();
  DateTimeColumn get expiryDate => dateTime()();
  RealColumn get currentPrice => real()();
  RealColumn get previousClose => real()();
  RealColumn get bidPrice => real()();
  RealColumn get askPrice => real()();
  IntColumn get bidQuantity => integer()();
  IntColumn get askQuantity => integer()();
  RealColumn get openInterest => real()();
  RealColumn get volume => real()();
  RealColumn get impliedVolatility => real()();
  RealColumn get delta => real()();
  RealColumn get gamma => real()();
  RealColumn get theta => real()();
  RealColumn get vega => real()();
  RealColumn get rho => real()();
  DateTimeColumn get lastUpdated => dateTime()();
  BoolColumn get isActive => boolean().withDefault(Constant(true))();

  @override
  Set<Column> get primaryKey => {symbol, expiryDate};
}

/// Orders table
class Orders extends Table {
  TextColumn get id => text().clientDefault(() => Uuid().v4())();
  TextColumn get symbol => text()();
  TextColumn get side => text()();
  TextColumn get orderType => text()();
  TextColumn get productType => text()();
  RealColumn get price => real()();
  IntColumn get quantity => integer()();
  RealColumn get filledQuantity => real().withDefault(Constant(0))();
  RealColumn get averagePrice => real().withDefault(Constant(0))();
  TextColumn get status => text()();
  RealColumn get stopLossPrice => real().nullable()();
  RealColumn get targetPrice => real().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get executedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Positions table
class Positions extends Table {
  TextColumn get id => text().clientDefault(() => Uuid().v4())();
  TextColumn get symbol => text()();
  TextColumn get name => text().withDefault(Constant(''))();
  TextColumn get type => text()();
  RealColumn get entryPrice => real()();
  RealColumn get currentPrice => real().withDefault(Constant(0))();
  IntColumn get quantity => integer()();
  RealColumn get pnl => real().withDefault(Constant(0))();
  RealColumn get pnlPercentage => real().withDefault(Constant(0))();
  RealColumn get dayPnl => real().withDefault(Constant(0))();
  RealColumn get dayPnlPercentage => real().withDefault(Constant(0))();
  DateTimeColumn get openedAt => dateTime()();
  DateTimeColumn get closedAt => dateTime().nullable()();
  BoolColumn get isActive => boolean().withDefault(Constant(true))();
  RealColumn get brokerage => real().withDefault(Constant(20))();

  @override
  Set<Column> get primaryKey => {id};
}

/// Watchlist names table
class WatchlistNames extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 20)();
  IntColumn get position => integer().withDefault(const Constant(0))();
}

/// Watchlist items table
class WatchlistItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get watchlistId => integer().references(WatchlistNames, #id)();
  TextColumn get symbol => text()();
  TextColumn get name => text()();
  TextColumn get instrumentType => text().withDefault(const Constant('STOCK'))(); // STOCK, OPTION
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();
  DateTimeColumn get addedAt => dateTime()();
}

/// Portfolio table
class PortfolioTable extends Table {
  TextColumn get id => text().clientDefault(() => 'portfolio')();
  RealColumn get cashBalance => real()();
  RealColumn get totalValue => real().withDefault(Constant(0))();
  RealColumn get totalPnl => real().withDefault(Constant(0))();
  RealColumn get dayPnl => real().withDefault(Constant(0))();
  DateTimeColumn get lastUpdated => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Trades table
class Trades extends Table {
  TextColumn get id => text().clientDefault(() => Uuid().v4())();
  TextColumn get orderId => text()();
  TextColumn get symbol => text()();
  TextColumn get side => text()();
  RealColumn get price => real()();
  IntColumn get quantity => integer()();
  RealColumn get value => real()();
  RealColumn get pnl => real().withDefault(const Constant(0))();
  RealColumn get brokerage => real().withDefault(const Constant(20))();
  RealColumn get gst => real().withDefault(Constant(3.6))();
  RealColumn get stampDuty => real().withDefault(Constant(0.01))();
  RealColumn get sebiFee => real().withDefault(Constant(0.05))();
  RealColumn get totalCharges => real().withDefault(Constant(23.61))();
  DateTimeColumn get executedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Alerts table
class Alerts extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text()();
  TextColumn get type => text()(); // PRICE_ABOVE, PRICE_BELOW, OI_CHANGE, IV_SPIKE, PCT_CHANGE
  RealColumn get targetValue => real()();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get lastTriggeredAt => dateTime().nullable()();
}

@DriftAccessor(tables: [WatchlistNames, WatchlistItems, Alerts])
class WatchlistDao extends DatabaseAccessor<AppDatabase> with _$WatchlistDaoMixin {
  WatchlistDao(super.db);

  Future<List<WatchlistName>> getAllWatchlists() => select(watchlistNames).get();
  
  Future<List<WatchlistItem>> getItemsForWatchlist(int watchlistId) {
    return (select(watchlistItems)..where((t) => t.watchlistId.equals(watchlistId))).get();
  }

  Future<int> createWatchlist(WatchlistNamesCompanion entry) => into(watchlistNames).insert(entry);
  Future addItem(WatchlistItemsCompanion entry) => into(watchlistItems).insert(entry);
  Future removeItem(int id) => (delete(watchlistItems)..where((t) => t.id.equals(id))).go();
  Future deleteWatchlist(int id) async {
    await (delete(watchlistItems)..where((t) => t.watchlistId.equals(id))).go();
    await (delete(watchlistNames)..where((t) => t.id.equals(id))).go();
  }
}

/// Database class with DAOs
@DriftDatabase(tables: [Stocks, OptionTable, Orders, Positions, WatchlistNames, WatchlistItems, PortfolioTable, Trades, Alerts], daos: [WatchlistDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Stock DAO methods - use generated data classes
  Future<List<Stock>> getAllStocks() => select(stocks).get();
  Future<Stock?> getStock(String symbol) => (select(stocks)..where((t) => t.symbol.equals(symbol))).getSingleOrNull();
  Future<List<Stock>> searchStocks(String query) => (select(stocks)..where((t) => t.symbol.contains(query) | t.name.contains(query))).get();
  Future<void> saveStock(StocksCompanion stock) => into(stocks).insertOnConflictUpdate(stock);
  Future<void> updateStockPrice(String symbol, double price, double volume) => 
    (update(stocks)..where((t) => t.symbol.equals(symbol))).write(StocksCompanion(currentPrice: Value(price), volume: Value(volume)));

  // Order DAO methods
  Future<List<Order>> getAllOrders() => select(orders).get();
  Future<List<Order>> getOrdersByStatus(String status) => (select(orders)..where((t) => t.status.equals(status))).get();
  Future<List<Order>> getCompletedOrders() => (select(orders)..where((t) => t.status.equals('filled') | t.status.equals('cancelled'))).get();
  Future<Order?> getOrder(String id) => (select(orders)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future<void> saveOrder(OrdersCompanion order) => into(orders).insertOnConflictUpdate(order);
  Future<void> updateOrderStatus(String id, String status) => 
    (update(orders)..where((t) => t.id.equals(id))).write(OrdersCompanion(status: Value(status)));
  Future<void> cancelOrder(String id) => 
    (update(orders)..where((t) => t.id.equals(id))).write(OrdersCompanion(status: const Value('cancelled')));

  // Position DAO methods
  Future<List<Position>> getAllPositions() => select(positions).get();
  Future<List<Position>> getActivePositions() => (select(positions)..where((t) => t.isActive.equals(true))).get();
  Future<void> savePosition(PositionsCompanion position) => into(positions).insertOnConflictUpdate(position);
  Future<void> updatePositionPrice(String id, double price) => 
    (update(positions)..where((t) => t.id.equals(id))).write(PositionsCompanion(currentPrice: Value(price)));
  Future<void> closePosition(String id, double exitPrice) => 
    (update(positions)..where((t) => t.id.equals(id))).write(PositionsCompanion(
      currentPrice: Value(exitPrice),
      isActive: const Value(false),
      closedAt: Value(DateTime.now()),
    ));

  // Portfolio DAO methods
  Future<PortfolioTableData?> getPortfolio() => (select(portfolioTable)..where((t) => t.id.equals('portfolio'))).getSingleOrNull();
  Future<void> savePortfolio(PortfolioTableCompanion portfolio) => into(portfolioTable).insertOnConflictUpdate(portfolio);

  // Trade DAO methods
  Future<void> saveTrade(TradesCompanion trade) => into(trades).insert(trade);

}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'tradedesk.db'));
    return NativeDatabase(file);
  });
}

/// UUID generator class
class Uuid {
  String v4() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replaceAllMapped(RegExp(r'[xy]'), (match) {
      final r = ((DateTime.now().microsecondsSinceEpoch + (0 + (16 * _random()))) % 16) | 0;
      final v = match.group(0) == 'x' ? r : (r & 0x3 | 0x8);
      return v.toRadixString(16);
    });
  }

  int _random() => (DateTime.now().microsecond * 1000 + DateTime.now().microsecond) % 256;
}
