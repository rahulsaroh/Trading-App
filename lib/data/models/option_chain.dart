import 'package:json_annotation/json_annotation.dart';

part 'option_chain.g.dart';

@JsonSerializable()
class OptionContract {
  final double strikePrice;
  final double? ltp;
  final double? bid;
  final double? ask;
  final double? iv;
  final double? delta;
  final double? theta;
  final double? gamma;
  final double? vega;
  final int? oi;
  final int? oiChange;
  final int? volume;

  OptionContract({
    required this.strikePrice,
    this.ltp,
    this.bid,
    this.ask,
    this.iv,
    this.delta,
    this.theta,
    this.gamma,
    this.vega,
    this.oi,
    this.oiChange,
    this.volume,
  });

  factory OptionContract.fromJson(Map<String, dynamic> json) => _$OptionContractFromJson(json);
  Map<String, dynamic> toJson() => _$OptionContractToJson(this);
}

@JsonSerializable()
class OptionChain {
  final String symbol;
  final String expiry;
  final double underlyingValue;
  final List<double> strikePrices;
  final List<OptionContract> calls;
  final List<OptionContract> puts;

  OptionChain({
    required this.symbol,
    required this.expiry,
    required this.underlyingValue,
    required this.strikePrices,
    required this.calls,
    required this.puts,
  });

  factory OptionChain.fromJson(Map<String, dynamic> json) => _$OptionChainFromJson(json);
  Map<String, dynamic> toJson() => _$OptionChainToJson(this);
}
