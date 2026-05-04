// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_chain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OptionContract _$OptionContractFromJson(Map<String, dynamic> json) =>
    OptionContract(
      strikePrice: (json['strikePrice'] as num).toDouble(),
      ltp: (json['ltp'] as num?)?.toDouble(),
      bid: (json['bid'] as num?)?.toDouble(),
      ask: (json['ask'] as num?)?.toDouble(),
      iv: (json['iv'] as num?)?.toDouble(),
      delta: (json['delta'] as num?)?.toDouble(),
      theta: (json['theta'] as num?)?.toDouble(),
      gamma: (json['gamma'] as num?)?.toDouble(),
      vega: (json['vega'] as num?)?.toDouble(),
      oi: (json['oi'] as num?)?.toInt(),
      oiChange: (json['oiChange'] as num?)?.toInt(),
      volume: (json['volume'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OptionContractToJson(OptionContract instance) =>
    <String, dynamic>{
      'strikePrice': instance.strikePrice,
      'ltp': instance.ltp,
      'bid': instance.bid,
      'ask': instance.ask,
      'iv': instance.iv,
      'delta': instance.delta,
      'theta': instance.theta,
      'gamma': instance.gamma,
      'vega': instance.vega,
      'oi': instance.oi,
      'oiChange': instance.oiChange,
      'volume': instance.volume,
    };

OptionChain _$OptionChainFromJson(Map<String, dynamic> json) => OptionChain(
  symbol: json['symbol'] as String,
  expiry: json['expiry'] as String,
  underlyingValue: (json['underlyingValue'] as num).toDouble(),
  strikePrices: (json['strikePrices'] as List<dynamic>)
      .map((e) => (e as num).toDouble())
      .toList(),
  calls: (json['calls'] as List<dynamic>)
      .map((e) => OptionContract.fromJson(e as Map<String, dynamic>))
      .toList(),
  puts: (json['puts'] as List<dynamic>)
      .map((e) => OptionContract.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OptionChainToJson(OptionChain instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'expiry': instance.expiry,
      'underlyingValue': instance.underlyingValue,
      'strikePrices': instance.strikePrices,
      'calls': instance.calls,
      'puts': instance.puts,
    };
