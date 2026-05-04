// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppOption _$AppOptionFromJson(Map<String, dynamic> json) => _AppOption(
  symbol: json['symbol'] as String,
  underlyingSymbol: json['underlyingSymbol'] as String,
  strikePrice: (json['strikePrice'] as num).toDouble(),
  type: $enumDecode(_$OptionTypeEnumMap, json['type']),
  expiryDate: DateTime.parse(json['expiryDate'] as String),
  currentPrice: (json['currentPrice'] as num).toDouble(),
  previousClose: (json['previousClose'] as num).toDouble(),
  bidPrice: (json['bidPrice'] as num).toDouble(),
  askPrice: (json['askPrice'] as num).toDouble(),
  bidQuantity: (json['bidQuantity'] as num).toInt(),
  askQuantity: (json['askQuantity'] as num).toInt(),
  openInterest: (json['openInterest'] as num).toDouble(),
  volume: (json['volume'] as num).toDouble(),
  impliedVolatility: (json['impliedVolatility'] as num).toDouble(),
  delta: (json['delta'] as num).toDouble(),
  gamma: (json['gamma'] as num).toDouble(),
  theta: (json['theta'] as num).toDouble(),
  vega: (json['vega'] as num).toDouble(),
  rho: (json['rho'] as num).toDouble(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  isActive: json['isActive'] as bool,
);

Map<String, dynamic> _$AppOptionToJson(_AppOption instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'underlyingSymbol': instance.underlyingSymbol,
      'strikePrice': instance.strikePrice,
      'type': _$OptionTypeEnumMap[instance.type]!,
      'expiryDate': instance.expiryDate.toIso8601String(),
      'currentPrice': instance.currentPrice,
      'previousClose': instance.previousClose,
      'bidPrice': instance.bidPrice,
      'askPrice': instance.askPrice,
      'bidQuantity': instance.bidQuantity,
      'askQuantity': instance.askQuantity,
      'openInterest': instance.openInterest,
      'volume': instance.volume,
      'impliedVolatility': instance.impliedVolatility,
      'delta': instance.delta,
      'gamma': instance.gamma,
      'theta': instance.theta,
      'vega': instance.vega,
      'rho': instance.rho,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'isActive': instance.isActive,
    };

const _$OptionTypeEnumMap = {OptionType.call: 'CE', OptionType.put: 'PE'};

_AppOptionChain _$AppOptionChainFromJson(Map<String, dynamic> json) =>
    _AppOptionChain(
      underlyingSymbol: json['underlyingSymbol'] as String,
      expiryDate: DateTime.parse(json['expiryDate'] as String),
      calls: (json['calls'] as List<dynamic>)
          .map((e) => AppOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      puts: (json['puts'] as List<dynamic>)
          .map((e) => AppOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      underlyingPrice: (json['underlyingPrice'] as num).toDouble(),
      spotPrice: (json['spotPrice'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$AppOptionChainToJson(_AppOptionChain instance) =>
    <String, dynamic>{
      'underlyingSymbol': instance.underlyingSymbol,
      'expiryDate': instance.expiryDate.toIso8601String(),
      'calls': instance.calls,
      'puts': instance.puts,
      'underlyingPrice': instance.underlyingPrice,
      'spotPrice': instance.spotPrice,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };
