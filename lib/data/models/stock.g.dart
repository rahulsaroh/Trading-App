// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppStock _$AppStockFromJson(Map<String, dynamic> json) => _AppStock(
  symbol: json['symbol'] as String,
  name: json['name'] as String,
  exchange: json['exchange'] as String,
  currentPrice: (json['currentPrice'] as num).toDouble(),
  previousClose: (json['previousClose'] as num).toDouble(),
  dayHigh: (json['dayHigh'] as num).toDouble(),
  dayLow: (json['dayLow'] as num).toDouble(),
  volume: (json['volume'] as num).toDouble(),
  marketCap: (json['marketCap'] as num).toDouble(),
  sector: json['sector'] as String,
  industry: json['industry'] as String,
  peRatio: (json['peRatio'] as num).toDouble(),
  pbRatio: (json['pbRatio'] as num).toDouble(),
  dividendYield: (json['dividendYield'] as num).toDouble(),
  beta: (json['beta'] as num).toDouble(),
  fiftyTwoWeekHigh: (json['fiftyTwoWeekHigh'] as num).toDouble(),
  fiftyTwoWeekLow: (json['fiftyTwoWeekLow'] as num).toDouble(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  isActive: json['isActive'] as bool,
);

Map<String, dynamic> _$AppStockToJson(_AppStock instance) => <String, dynamic>{
  'symbol': instance.symbol,
  'name': instance.name,
  'exchange': instance.exchange,
  'currentPrice': instance.currentPrice,
  'previousClose': instance.previousClose,
  'dayHigh': instance.dayHigh,
  'dayLow': instance.dayLow,
  'volume': instance.volume,
  'marketCap': instance.marketCap,
  'sector': instance.sector,
  'industry': instance.industry,
  'peRatio': instance.peRatio,
  'pbRatio': instance.pbRatio,
  'dividendYield': instance.dividendYield,
  'beta': instance.beta,
  'fiftyTwoWeekHigh': instance.fiftyTwoWeekHigh,
  'fiftyTwoWeekLow': instance.fiftyTwoWeekLow,
  'lastUpdated': instance.lastUpdated.toIso8601String(),
  'isActive': instance.isActive,
};

_AppStockQuote _$AppStockQuoteFromJson(Map<String, dynamic> json) =>
    _AppStockQuote(
      symbol: json['symbol'] as String,
      price: (json['price'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
      percentageChange: (json['percentageChange'] as num).toDouble(),
      volume: (json['volume'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$AppStockQuoteToJson(_AppStockQuote instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'price': instance.price,
      'change': instance.change,
      'percentageChange': instance.percentageChange,
      'volume': instance.volume,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_AppStockStats _$AppStockStatsFromJson(Map<String, dynamic> json) =>
    _AppStockStats(
      symbol: json['symbol'] as String,
      averageVolume: (json['averageVolume'] as num).toDouble(),
      volatility: (json['volatility'] as num).toDouble(),
      beta: (json['beta'] as num).toDouble(),
      sharpeRatio: (json['sharpeRatio'] as num).toDouble(),
      maxDrawdown: (json['maxDrawdown'] as num).toDouble(),
      lastCalculated: DateTime.parse(json['lastCalculated'] as String),
    );

Map<String, dynamic> _$AppStockStatsToJson(_AppStockStats instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'averageVolume': instance.averageVolume,
      'volatility': instance.volatility,
      'beta': instance.beta,
      'sharpeRatio': instance.sharpeRatio,
      'maxDrawdown': instance.maxDrawdown,
      'lastCalculated': instance.lastCalculated.toIso8601String(),
    };
