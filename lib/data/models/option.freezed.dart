// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppOption {

 String get symbol; String get underlyingSymbol; double get strikePrice; OptionType get type; DateTime get expiryDate; double get currentPrice; double get previousClose; double get bidPrice; double get askPrice; int get bidQuantity; int get askQuantity; double get openInterest; double get volume; double get impliedVolatility; double get delta; double get gamma; double get theta; double get vega; double get rho; DateTime get lastUpdated; bool get isActive;
/// Create a copy of AppOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppOptionCopyWith<AppOption> get copyWith => _$AppOptionCopyWithImpl<AppOption>(this as AppOption, _$identity);

  /// Serializes this AppOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppOption&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.underlyingSymbol, underlyingSymbol) || other.underlyingSymbol == underlyingSymbol)&&(identical(other.strikePrice, strikePrice) || other.strikePrice == strikePrice)&&(identical(other.type, type) || other.type == type)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.previousClose, previousClose) || other.previousClose == previousClose)&&(identical(other.bidPrice, bidPrice) || other.bidPrice == bidPrice)&&(identical(other.askPrice, askPrice) || other.askPrice == askPrice)&&(identical(other.bidQuantity, bidQuantity) || other.bidQuantity == bidQuantity)&&(identical(other.askQuantity, askQuantity) || other.askQuantity == askQuantity)&&(identical(other.openInterest, openInterest) || other.openInterest == openInterest)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.impliedVolatility, impliedVolatility) || other.impliedVolatility == impliedVolatility)&&(identical(other.delta, delta) || other.delta == delta)&&(identical(other.gamma, gamma) || other.gamma == gamma)&&(identical(other.theta, theta) || other.theta == theta)&&(identical(other.vega, vega) || other.vega == vega)&&(identical(other.rho, rho) || other.rho == rho)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,symbol,underlyingSymbol,strikePrice,type,expiryDate,currentPrice,previousClose,bidPrice,askPrice,bidQuantity,askQuantity,openInterest,volume,impliedVolatility,delta,gamma,theta,vega,rho,lastUpdated,isActive]);

@override
String toString() {
  return 'AppOption(symbol: $symbol, underlyingSymbol: $underlyingSymbol, strikePrice: $strikePrice, type: $type, expiryDate: $expiryDate, currentPrice: $currentPrice, previousClose: $previousClose, bidPrice: $bidPrice, askPrice: $askPrice, bidQuantity: $bidQuantity, askQuantity: $askQuantity, openInterest: $openInterest, volume: $volume, impliedVolatility: $impliedVolatility, delta: $delta, gamma: $gamma, theta: $theta, vega: $vega, rho: $rho, lastUpdated: $lastUpdated, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $AppOptionCopyWith<$Res>  {
  factory $AppOptionCopyWith(AppOption value, $Res Function(AppOption) _then) = _$AppOptionCopyWithImpl;
@useResult
$Res call({
 String symbol, String underlyingSymbol, double strikePrice, OptionType type, DateTime expiryDate, double currentPrice, double previousClose, double bidPrice, double askPrice, int bidQuantity, int askQuantity, double openInterest, double volume, double impliedVolatility, double delta, double gamma, double theta, double vega, double rho, DateTime lastUpdated, bool isActive
});




}
/// @nodoc
class _$AppOptionCopyWithImpl<$Res>
    implements $AppOptionCopyWith<$Res> {
  _$AppOptionCopyWithImpl(this._self, this._then);

  final AppOption _self;
  final $Res Function(AppOption) _then;

/// Create a copy of AppOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? underlyingSymbol = null,Object? strikePrice = null,Object? type = null,Object? expiryDate = null,Object? currentPrice = null,Object? previousClose = null,Object? bidPrice = null,Object? askPrice = null,Object? bidQuantity = null,Object? askQuantity = null,Object? openInterest = null,Object? volume = null,Object? impliedVolatility = null,Object? delta = null,Object? gamma = null,Object? theta = null,Object? vega = null,Object? rho = null,Object? lastUpdated = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,underlyingSymbol: null == underlyingSymbol ? _self.underlyingSymbol : underlyingSymbol // ignore: cast_nullable_to_non_nullable
as String,strikePrice: null == strikePrice ? _self.strikePrice : strikePrice // ignore: cast_nullable_to_non_nullable
as double,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OptionType,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as double,previousClose: null == previousClose ? _self.previousClose : previousClose // ignore: cast_nullable_to_non_nullable
as double,bidPrice: null == bidPrice ? _self.bidPrice : bidPrice // ignore: cast_nullable_to_non_nullable
as double,askPrice: null == askPrice ? _self.askPrice : askPrice // ignore: cast_nullable_to_non_nullable
as double,bidQuantity: null == bidQuantity ? _self.bidQuantity : bidQuantity // ignore: cast_nullable_to_non_nullable
as int,askQuantity: null == askQuantity ? _self.askQuantity : askQuantity // ignore: cast_nullable_to_non_nullable
as int,openInterest: null == openInterest ? _self.openInterest : openInterest // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,impliedVolatility: null == impliedVolatility ? _self.impliedVolatility : impliedVolatility // ignore: cast_nullable_to_non_nullable
as double,delta: null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as double,gamma: null == gamma ? _self.gamma : gamma // ignore: cast_nullable_to_non_nullable
as double,theta: null == theta ? _self.theta : theta // ignore: cast_nullable_to_non_nullable
as double,vega: null == vega ? _self.vega : vega // ignore: cast_nullable_to_non_nullable
as double,rho: null == rho ? _self.rho : rho // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppOption].
extension AppOptionPatterns on AppOption {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppOption() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppOption value)  $default,){
final _that = this;
switch (_that) {
case _AppOption():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppOption value)?  $default,){
final _that = this;
switch (_that) {
case _AppOption() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  String underlyingSymbol,  double strikePrice,  OptionType type,  DateTime expiryDate,  double currentPrice,  double previousClose,  double bidPrice,  double askPrice,  int bidQuantity,  int askQuantity,  double openInterest,  double volume,  double impliedVolatility,  double delta,  double gamma,  double theta,  double vega,  double rho,  DateTime lastUpdated,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppOption() when $default != null:
return $default(_that.symbol,_that.underlyingSymbol,_that.strikePrice,_that.type,_that.expiryDate,_that.currentPrice,_that.previousClose,_that.bidPrice,_that.askPrice,_that.bidQuantity,_that.askQuantity,_that.openInterest,_that.volume,_that.impliedVolatility,_that.delta,_that.gamma,_that.theta,_that.vega,_that.rho,_that.lastUpdated,_that.isActive);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  String underlyingSymbol,  double strikePrice,  OptionType type,  DateTime expiryDate,  double currentPrice,  double previousClose,  double bidPrice,  double askPrice,  int bidQuantity,  int askQuantity,  double openInterest,  double volume,  double impliedVolatility,  double delta,  double gamma,  double theta,  double vega,  double rho,  DateTime lastUpdated,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _AppOption():
return $default(_that.symbol,_that.underlyingSymbol,_that.strikePrice,_that.type,_that.expiryDate,_that.currentPrice,_that.previousClose,_that.bidPrice,_that.askPrice,_that.bidQuantity,_that.askQuantity,_that.openInterest,_that.volume,_that.impliedVolatility,_that.delta,_that.gamma,_that.theta,_that.vega,_that.rho,_that.lastUpdated,_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  String underlyingSymbol,  double strikePrice,  OptionType type,  DateTime expiryDate,  double currentPrice,  double previousClose,  double bidPrice,  double askPrice,  int bidQuantity,  int askQuantity,  double openInterest,  double volume,  double impliedVolatility,  double delta,  double gamma,  double theta,  double vega,  double rho,  DateTime lastUpdated,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _AppOption() when $default != null:
return $default(_that.symbol,_that.underlyingSymbol,_that.strikePrice,_that.type,_that.expiryDate,_that.currentPrice,_that.previousClose,_that.bidPrice,_that.askPrice,_that.bidQuantity,_that.askQuantity,_that.openInterest,_that.volume,_that.impliedVolatility,_that.delta,_that.gamma,_that.theta,_that.vega,_that.rho,_that.lastUpdated,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppOption extends AppOption {
  const _AppOption({required this.symbol, required this.underlyingSymbol, required this.strikePrice, required this.type, required this.expiryDate, required this.currentPrice, required this.previousClose, required this.bidPrice, required this.askPrice, required this.bidQuantity, required this.askQuantity, required this.openInterest, required this.volume, required this.impliedVolatility, required this.delta, required this.gamma, required this.theta, required this.vega, required this.rho, required this.lastUpdated, required this.isActive}): super._();
  factory _AppOption.fromJson(Map<String, dynamic> json) => _$AppOptionFromJson(json);

@override final  String symbol;
@override final  String underlyingSymbol;
@override final  double strikePrice;
@override final  OptionType type;
@override final  DateTime expiryDate;
@override final  double currentPrice;
@override final  double previousClose;
@override final  double bidPrice;
@override final  double askPrice;
@override final  int bidQuantity;
@override final  int askQuantity;
@override final  double openInterest;
@override final  double volume;
@override final  double impliedVolatility;
@override final  double delta;
@override final  double gamma;
@override final  double theta;
@override final  double vega;
@override final  double rho;
@override final  DateTime lastUpdated;
@override final  bool isActive;

/// Create a copy of AppOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppOptionCopyWith<_AppOption> get copyWith => __$AppOptionCopyWithImpl<_AppOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppOption&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.underlyingSymbol, underlyingSymbol) || other.underlyingSymbol == underlyingSymbol)&&(identical(other.strikePrice, strikePrice) || other.strikePrice == strikePrice)&&(identical(other.type, type) || other.type == type)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.previousClose, previousClose) || other.previousClose == previousClose)&&(identical(other.bidPrice, bidPrice) || other.bidPrice == bidPrice)&&(identical(other.askPrice, askPrice) || other.askPrice == askPrice)&&(identical(other.bidQuantity, bidQuantity) || other.bidQuantity == bidQuantity)&&(identical(other.askQuantity, askQuantity) || other.askQuantity == askQuantity)&&(identical(other.openInterest, openInterest) || other.openInterest == openInterest)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.impliedVolatility, impliedVolatility) || other.impliedVolatility == impliedVolatility)&&(identical(other.delta, delta) || other.delta == delta)&&(identical(other.gamma, gamma) || other.gamma == gamma)&&(identical(other.theta, theta) || other.theta == theta)&&(identical(other.vega, vega) || other.vega == vega)&&(identical(other.rho, rho) || other.rho == rho)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,symbol,underlyingSymbol,strikePrice,type,expiryDate,currentPrice,previousClose,bidPrice,askPrice,bidQuantity,askQuantity,openInterest,volume,impliedVolatility,delta,gamma,theta,vega,rho,lastUpdated,isActive]);

@override
String toString() {
  return 'AppOption(symbol: $symbol, underlyingSymbol: $underlyingSymbol, strikePrice: $strikePrice, type: $type, expiryDate: $expiryDate, currentPrice: $currentPrice, previousClose: $previousClose, bidPrice: $bidPrice, askPrice: $askPrice, bidQuantity: $bidQuantity, askQuantity: $askQuantity, openInterest: $openInterest, volume: $volume, impliedVolatility: $impliedVolatility, delta: $delta, gamma: $gamma, theta: $theta, vega: $vega, rho: $rho, lastUpdated: $lastUpdated, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$AppOptionCopyWith<$Res> implements $AppOptionCopyWith<$Res> {
  factory _$AppOptionCopyWith(_AppOption value, $Res Function(_AppOption) _then) = __$AppOptionCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String underlyingSymbol, double strikePrice, OptionType type, DateTime expiryDate, double currentPrice, double previousClose, double bidPrice, double askPrice, int bidQuantity, int askQuantity, double openInterest, double volume, double impliedVolatility, double delta, double gamma, double theta, double vega, double rho, DateTime lastUpdated, bool isActive
});




}
/// @nodoc
class __$AppOptionCopyWithImpl<$Res>
    implements _$AppOptionCopyWith<$Res> {
  __$AppOptionCopyWithImpl(this._self, this._then);

  final _AppOption _self;
  final $Res Function(_AppOption) _then;

/// Create a copy of AppOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? underlyingSymbol = null,Object? strikePrice = null,Object? type = null,Object? expiryDate = null,Object? currentPrice = null,Object? previousClose = null,Object? bidPrice = null,Object? askPrice = null,Object? bidQuantity = null,Object? askQuantity = null,Object? openInterest = null,Object? volume = null,Object? impliedVolatility = null,Object? delta = null,Object? gamma = null,Object? theta = null,Object? vega = null,Object? rho = null,Object? lastUpdated = null,Object? isActive = null,}) {
  return _then(_AppOption(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,underlyingSymbol: null == underlyingSymbol ? _self.underlyingSymbol : underlyingSymbol // ignore: cast_nullable_to_non_nullable
as String,strikePrice: null == strikePrice ? _self.strikePrice : strikePrice // ignore: cast_nullable_to_non_nullable
as double,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as OptionType,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as double,previousClose: null == previousClose ? _self.previousClose : previousClose // ignore: cast_nullable_to_non_nullable
as double,bidPrice: null == bidPrice ? _self.bidPrice : bidPrice // ignore: cast_nullable_to_non_nullable
as double,askPrice: null == askPrice ? _self.askPrice : askPrice // ignore: cast_nullable_to_non_nullable
as double,bidQuantity: null == bidQuantity ? _self.bidQuantity : bidQuantity // ignore: cast_nullable_to_non_nullable
as int,askQuantity: null == askQuantity ? _self.askQuantity : askQuantity // ignore: cast_nullable_to_non_nullable
as int,openInterest: null == openInterest ? _self.openInterest : openInterest // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,impliedVolatility: null == impliedVolatility ? _self.impliedVolatility : impliedVolatility // ignore: cast_nullable_to_non_nullable
as double,delta: null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as double,gamma: null == gamma ? _self.gamma : gamma // ignore: cast_nullable_to_non_nullable
as double,theta: null == theta ? _self.theta : theta // ignore: cast_nullable_to_non_nullable
as double,vega: null == vega ? _self.vega : vega // ignore: cast_nullable_to_non_nullable
as double,rho: null == rho ? _self.rho : rho // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AppOptionChain {

 String get underlyingSymbol; DateTime get expiryDate; List<AppOption> get calls; List<AppOption> get puts; double get underlyingPrice; double get spotPrice; DateTime get lastUpdated;
/// Create a copy of AppOptionChain
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppOptionChainCopyWith<AppOptionChain> get copyWith => _$AppOptionChainCopyWithImpl<AppOptionChain>(this as AppOptionChain, _$identity);

  /// Serializes this AppOptionChain to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppOptionChain&&(identical(other.underlyingSymbol, underlyingSymbol) || other.underlyingSymbol == underlyingSymbol)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&const DeepCollectionEquality().equals(other.calls, calls)&&const DeepCollectionEquality().equals(other.puts, puts)&&(identical(other.underlyingPrice, underlyingPrice) || other.underlyingPrice == underlyingPrice)&&(identical(other.spotPrice, spotPrice) || other.spotPrice == spotPrice)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,underlyingSymbol,expiryDate,const DeepCollectionEquality().hash(calls),const DeepCollectionEquality().hash(puts),underlyingPrice,spotPrice,lastUpdated);

@override
String toString() {
  return 'AppOptionChain(underlyingSymbol: $underlyingSymbol, expiryDate: $expiryDate, calls: $calls, puts: $puts, underlyingPrice: $underlyingPrice, spotPrice: $spotPrice, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class $AppOptionChainCopyWith<$Res>  {
  factory $AppOptionChainCopyWith(AppOptionChain value, $Res Function(AppOptionChain) _then) = _$AppOptionChainCopyWithImpl;
@useResult
$Res call({
 String underlyingSymbol, DateTime expiryDate, List<AppOption> calls, List<AppOption> puts, double underlyingPrice, double spotPrice, DateTime lastUpdated
});




}
/// @nodoc
class _$AppOptionChainCopyWithImpl<$Res>
    implements $AppOptionChainCopyWith<$Res> {
  _$AppOptionChainCopyWithImpl(this._self, this._then);

  final AppOptionChain _self;
  final $Res Function(AppOptionChain) _then;

/// Create a copy of AppOptionChain
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? underlyingSymbol = null,Object? expiryDate = null,Object? calls = null,Object? puts = null,Object? underlyingPrice = null,Object? spotPrice = null,Object? lastUpdated = null,}) {
  return _then(_self.copyWith(
underlyingSymbol: null == underlyingSymbol ? _self.underlyingSymbol : underlyingSymbol // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime,calls: null == calls ? _self.calls : calls // ignore: cast_nullable_to_non_nullable
as List<AppOption>,puts: null == puts ? _self.puts : puts // ignore: cast_nullable_to_non_nullable
as List<AppOption>,underlyingPrice: null == underlyingPrice ? _self.underlyingPrice : underlyingPrice // ignore: cast_nullable_to_non_nullable
as double,spotPrice: null == spotPrice ? _self.spotPrice : spotPrice // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AppOptionChain].
extension AppOptionChainPatterns on AppOptionChain {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppOptionChain value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppOptionChain() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppOptionChain value)  $default,){
final _that = this;
switch (_that) {
case _AppOptionChain():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppOptionChain value)?  $default,){
final _that = this;
switch (_that) {
case _AppOptionChain() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String underlyingSymbol,  DateTime expiryDate,  List<AppOption> calls,  List<AppOption> puts,  double underlyingPrice,  double spotPrice,  DateTime lastUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppOptionChain() when $default != null:
return $default(_that.underlyingSymbol,_that.expiryDate,_that.calls,_that.puts,_that.underlyingPrice,_that.spotPrice,_that.lastUpdated);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String underlyingSymbol,  DateTime expiryDate,  List<AppOption> calls,  List<AppOption> puts,  double underlyingPrice,  double spotPrice,  DateTime lastUpdated)  $default,) {final _that = this;
switch (_that) {
case _AppOptionChain():
return $default(_that.underlyingSymbol,_that.expiryDate,_that.calls,_that.puts,_that.underlyingPrice,_that.spotPrice,_that.lastUpdated);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String underlyingSymbol,  DateTime expiryDate,  List<AppOption> calls,  List<AppOption> puts,  double underlyingPrice,  double spotPrice,  DateTime lastUpdated)?  $default,) {final _that = this;
switch (_that) {
case _AppOptionChain() when $default != null:
return $default(_that.underlyingSymbol,_that.expiryDate,_that.calls,_that.puts,_that.underlyingPrice,_that.spotPrice,_that.lastUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppOptionChain extends AppOptionChain {
  const _AppOptionChain({required this.underlyingSymbol, required this.expiryDate, required final  List<AppOption> calls, required final  List<AppOption> puts, required this.underlyingPrice, required this.spotPrice, required this.lastUpdated}): _calls = calls,_puts = puts,super._();
  factory _AppOptionChain.fromJson(Map<String, dynamic> json) => _$AppOptionChainFromJson(json);

@override final  String underlyingSymbol;
@override final  DateTime expiryDate;
 final  List<AppOption> _calls;
@override List<AppOption> get calls {
  if (_calls is EqualUnmodifiableListView) return _calls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_calls);
}

 final  List<AppOption> _puts;
@override List<AppOption> get puts {
  if (_puts is EqualUnmodifiableListView) return _puts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_puts);
}

@override final  double underlyingPrice;
@override final  double spotPrice;
@override final  DateTime lastUpdated;

/// Create a copy of AppOptionChain
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppOptionChainCopyWith<_AppOptionChain> get copyWith => __$AppOptionChainCopyWithImpl<_AppOptionChain>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppOptionChainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppOptionChain&&(identical(other.underlyingSymbol, underlyingSymbol) || other.underlyingSymbol == underlyingSymbol)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&const DeepCollectionEquality().equals(other._calls, _calls)&&const DeepCollectionEquality().equals(other._puts, _puts)&&(identical(other.underlyingPrice, underlyingPrice) || other.underlyingPrice == underlyingPrice)&&(identical(other.spotPrice, spotPrice) || other.spotPrice == spotPrice)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,underlyingSymbol,expiryDate,const DeepCollectionEquality().hash(_calls),const DeepCollectionEquality().hash(_puts),underlyingPrice,spotPrice,lastUpdated);

@override
String toString() {
  return 'AppOptionChain(underlyingSymbol: $underlyingSymbol, expiryDate: $expiryDate, calls: $calls, puts: $puts, underlyingPrice: $underlyingPrice, spotPrice: $spotPrice, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class _$AppOptionChainCopyWith<$Res> implements $AppOptionChainCopyWith<$Res> {
  factory _$AppOptionChainCopyWith(_AppOptionChain value, $Res Function(_AppOptionChain) _then) = __$AppOptionChainCopyWithImpl;
@override @useResult
$Res call({
 String underlyingSymbol, DateTime expiryDate, List<AppOption> calls, List<AppOption> puts, double underlyingPrice, double spotPrice, DateTime lastUpdated
});




}
/// @nodoc
class __$AppOptionChainCopyWithImpl<$Res>
    implements _$AppOptionChainCopyWith<$Res> {
  __$AppOptionChainCopyWithImpl(this._self, this._then);

  final _AppOptionChain _self;
  final $Res Function(_AppOptionChain) _then;

/// Create a copy of AppOptionChain
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? underlyingSymbol = null,Object? expiryDate = null,Object? calls = null,Object? puts = null,Object? underlyingPrice = null,Object? spotPrice = null,Object? lastUpdated = null,}) {
  return _then(_AppOptionChain(
underlyingSymbol: null == underlyingSymbol ? _self.underlyingSymbol : underlyingSymbol // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime,calls: null == calls ? _self._calls : calls // ignore: cast_nullable_to_non_nullable
as List<AppOption>,puts: null == puts ? _self._puts : puts // ignore: cast_nullable_to_non_nullable
as List<AppOption>,underlyingPrice: null == underlyingPrice ? _self.underlyingPrice : underlyingPrice // ignore: cast_nullable_to_non_nullable
as double,spotPrice: null == spotPrice ? _self.spotPrice : spotPrice // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
