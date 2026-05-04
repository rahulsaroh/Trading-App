// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppStock {

 String get symbol; String get name; String get exchange; double get currentPrice; double get previousClose; double get dayHigh; double get dayLow; double get volume; double get marketCap; String get sector; String get industry; double get peRatio; double get pbRatio; double get dividendYield; double get beta; double get fiftyTwoWeekHigh; double get fiftyTwoWeekLow; DateTime get lastUpdated; bool get isActive;
/// Create a copy of AppStock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStockCopyWith<AppStock> get copyWith => _$AppStockCopyWithImpl<AppStock>(this as AppStock, _$identity);

  /// Serializes this AppStock to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStock&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.previousClose, previousClose) || other.previousClose == previousClose)&&(identical(other.dayHigh, dayHigh) || other.dayHigh == dayHigh)&&(identical(other.dayLow, dayLow) || other.dayLow == dayLow)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.peRatio, peRatio) || other.peRatio == peRatio)&&(identical(other.pbRatio, pbRatio) || other.pbRatio == pbRatio)&&(identical(other.dividendYield, dividendYield) || other.dividendYield == dividendYield)&&(identical(other.beta, beta) || other.beta == beta)&&(identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) || other.fiftyTwoWeekHigh == fiftyTwoWeekHigh)&&(identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) || other.fiftyTwoWeekLow == fiftyTwoWeekLow)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,symbol,name,exchange,currentPrice,previousClose,dayHigh,dayLow,volume,marketCap,sector,industry,peRatio,pbRatio,dividendYield,beta,fiftyTwoWeekHigh,fiftyTwoWeekLow,lastUpdated,isActive]);

@override
String toString() {
  return 'AppStock(symbol: $symbol, name: $name, exchange: $exchange, currentPrice: $currentPrice, previousClose: $previousClose, dayHigh: $dayHigh, dayLow: $dayLow, volume: $volume, marketCap: $marketCap, sector: $sector, industry: $industry, peRatio: $peRatio, pbRatio: $pbRatio, dividendYield: $dividendYield, beta: $beta, fiftyTwoWeekHigh: $fiftyTwoWeekHigh, fiftyTwoWeekLow: $fiftyTwoWeekLow, lastUpdated: $lastUpdated, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $AppStockCopyWith<$Res>  {
  factory $AppStockCopyWith(AppStock value, $Res Function(AppStock) _then) = _$AppStockCopyWithImpl;
@useResult
$Res call({
 String symbol, String name, String exchange, double currentPrice, double previousClose, double dayHigh, double dayLow, double volume, double marketCap, String sector, String industry, double peRatio, double pbRatio, double dividendYield, double beta, double fiftyTwoWeekHigh, double fiftyTwoWeekLow, DateTime lastUpdated, bool isActive
});




}
/// @nodoc
class _$AppStockCopyWithImpl<$Res>
    implements $AppStockCopyWith<$Res> {
  _$AppStockCopyWithImpl(this._self, this._then);

  final AppStock _self;
  final $Res Function(AppStock) _then;

/// Create a copy of AppStock
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? name = null,Object? exchange = null,Object? currentPrice = null,Object? previousClose = null,Object? dayHigh = null,Object? dayLow = null,Object? volume = null,Object? marketCap = null,Object? sector = null,Object? industry = null,Object? peRatio = null,Object? pbRatio = null,Object? dividendYield = null,Object? beta = null,Object? fiftyTwoWeekHigh = null,Object? fiftyTwoWeekLow = null,Object? lastUpdated = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as double,previousClose: null == previousClose ? _self.previousClose : previousClose // ignore: cast_nullable_to_non_nullable
as double,dayHigh: null == dayHigh ? _self.dayHigh : dayHigh // ignore: cast_nullable_to_non_nullable
as double,dayLow: null == dayLow ? _self.dayLow : dayLow // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,marketCap: null == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as double,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,peRatio: null == peRatio ? _self.peRatio : peRatio // ignore: cast_nullable_to_non_nullable
as double,pbRatio: null == pbRatio ? _self.pbRatio : pbRatio // ignore: cast_nullable_to_non_nullable
as double,dividendYield: null == dividendYield ? _self.dividendYield : dividendYield // ignore: cast_nullable_to_non_nullable
as double,beta: null == beta ? _self.beta : beta // ignore: cast_nullable_to_non_nullable
as double,fiftyTwoWeekHigh: null == fiftyTwoWeekHigh ? _self.fiftyTwoWeekHigh : fiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
as double,fiftyTwoWeekLow: null == fiftyTwoWeekLow ? _self.fiftyTwoWeekLow : fiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppStock].
extension AppStockPatterns on AppStock {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppStock value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppStock() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppStock value)  $default,){
final _that = this;
switch (_that) {
case _AppStock():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppStock value)?  $default,){
final _that = this;
switch (_that) {
case _AppStock() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  String name,  String exchange,  double currentPrice,  double previousClose,  double dayHigh,  double dayLow,  double volume,  double marketCap,  String sector,  String industry,  double peRatio,  double pbRatio,  double dividendYield,  double beta,  double fiftyTwoWeekHigh,  double fiftyTwoWeekLow,  DateTime lastUpdated,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppStock() when $default != null:
return $default(_that.symbol,_that.name,_that.exchange,_that.currentPrice,_that.previousClose,_that.dayHigh,_that.dayLow,_that.volume,_that.marketCap,_that.sector,_that.industry,_that.peRatio,_that.pbRatio,_that.dividendYield,_that.beta,_that.fiftyTwoWeekHigh,_that.fiftyTwoWeekLow,_that.lastUpdated,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  String name,  String exchange,  double currentPrice,  double previousClose,  double dayHigh,  double dayLow,  double volume,  double marketCap,  String sector,  String industry,  double peRatio,  double pbRatio,  double dividendYield,  double beta,  double fiftyTwoWeekHigh,  double fiftyTwoWeekLow,  DateTime lastUpdated,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _AppStock():
return $default(_that.symbol,_that.name,_that.exchange,_that.currentPrice,_that.previousClose,_that.dayHigh,_that.dayLow,_that.volume,_that.marketCap,_that.sector,_that.industry,_that.peRatio,_that.pbRatio,_that.dividendYield,_that.beta,_that.fiftyTwoWeekHigh,_that.fiftyTwoWeekLow,_that.lastUpdated,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  String name,  String exchange,  double currentPrice,  double previousClose,  double dayHigh,  double dayLow,  double volume,  double marketCap,  String sector,  String industry,  double peRatio,  double pbRatio,  double dividendYield,  double beta,  double fiftyTwoWeekHigh,  double fiftyTwoWeekLow,  DateTime lastUpdated,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _AppStock() when $default != null:
return $default(_that.symbol,_that.name,_that.exchange,_that.currentPrice,_that.previousClose,_that.dayHigh,_that.dayLow,_that.volume,_that.marketCap,_that.sector,_that.industry,_that.peRatio,_that.pbRatio,_that.dividendYield,_that.beta,_that.fiftyTwoWeekHigh,_that.fiftyTwoWeekLow,_that.lastUpdated,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppStock extends AppStock {
  const _AppStock({required this.symbol, required this.name, required this.exchange, required this.currentPrice, required this.previousClose, required this.dayHigh, required this.dayLow, required this.volume, required this.marketCap, required this.sector, required this.industry, required this.peRatio, required this.pbRatio, required this.dividendYield, required this.beta, required this.fiftyTwoWeekHigh, required this.fiftyTwoWeekLow, required this.lastUpdated, required this.isActive}): super._();
  factory _AppStock.fromJson(Map<String, dynamic> json) => _$AppStockFromJson(json);

@override final  String symbol;
@override final  String name;
@override final  String exchange;
@override final  double currentPrice;
@override final  double previousClose;
@override final  double dayHigh;
@override final  double dayLow;
@override final  double volume;
@override final  double marketCap;
@override final  String sector;
@override final  String industry;
@override final  double peRatio;
@override final  double pbRatio;
@override final  double dividendYield;
@override final  double beta;
@override final  double fiftyTwoWeekHigh;
@override final  double fiftyTwoWeekLow;
@override final  DateTime lastUpdated;
@override final  bool isActive;

/// Create a copy of AppStock
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStockCopyWith<_AppStock> get copyWith => __$AppStockCopyWithImpl<_AppStock>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppStockToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppStock&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.previousClose, previousClose) || other.previousClose == previousClose)&&(identical(other.dayHigh, dayHigh) || other.dayHigh == dayHigh)&&(identical(other.dayLow, dayLow) || other.dayLow == dayLow)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.peRatio, peRatio) || other.peRatio == peRatio)&&(identical(other.pbRatio, pbRatio) || other.pbRatio == pbRatio)&&(identical(other.dividendYield, dividendYield) || other.dividendYield == dividendYield)&&(identical(other.beta, beta) || other.beta == beta)&&(identical(other.fiftyTwoWeekHigh, fiftyTwoWeekHigh) || other.fiftyTwoWeekHigh == fiftyTwoWeekHigh)&&(identical(other.fiftyTwoWeekLow, fiftyTwoWeekLow) || other.fiftyTwoWeekLow == fiftyTwoWeekLow)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,symbol,name,exchange,currentPrice,previousClose,dayHigh,dayLow,volume,marketCap,sector,industry,peRatio,pbRatio,dividendYield,beta,fiftyTwoWeekHigh,fiftyTwoWeekLow,lastUpdated,isActive]);

@override
String toString() {
  return 'AppStock(symbol: $symbol, name: $name, exchange: $exchange, currentPrice: $currentPrice, previousClose: $previousClose, dayHigh: $dayHigh, dayLow: $dayLow, volume: $volume, marketCap: $marketCap, sector: $sector, industry: $industry, peRatio: $peRatio, pbRatio: $pbRatio, dividendYield: $dividendYield, beta: $beta, fiftyTwoWeekHigh: $fiftyTwoWeekHigh, fiftyTwoWeekLow: $fiftyTwoWeekLow, lastUpdated: $lastUpdated, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$AppStockCopyWith<$Res> implements $AppStockCopyWith<$Res> {
  factory _$AppStockCopyWith(_AppStock value, $Res Function(_AppStock) _then) = __$AppStockCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String name, String exchange, double currentPrice, double previousClose, double dayHigh, double dayLow, double volume, double marketCap, String sector, String industry, double peRatio, double pbRatio, double dividendYield, double beta, double fiftyTwoWeekHigh, double fiftyTwoWeekLow, DateTime lastUpdated, bool isActive
});




}
/// @nodoc
class __$AppStockCopyWithImpl<$Res>
    implements _$AppStockCopyWith<$Res> {
  __$AppStockCopyWithImpl(this._self, this._then);

  final _AppStock _self;
  final $Res Function(_AppStock) _then;

/// Create a copy of AppStock
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? name = null,Object? exchange = null,Object? currentPrice = null,Object? previousClose = null,Object? dayHigh = null,Object? dayLow = null,Object? volume = null,Object? marketCap = null,Object? sector = null,Object? industry = null,Object? peRatio = null,Object? pbRatio = null,Object? dividendYield = null,Object? beta = null,Object? fiftyTwoWeekHigh = null,Object? fiftyTwoWeekLow = null,Object? lastUpdated = null,Object? isActive = null,}) {
  return _then(_AppStock(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as double,previousClose: null == previousClose ? _self.previousClose : previousClose // ignore: cast_nullable_to_non_nullable
as double,dayHigh: null == dayHigh ? _self.dayHigh : dayHigh // ignore: cast_nullable_to_non_nullable
as double,dayLow: null == dayLow ? _self.dayLow : dayLow // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,marketCap: null == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as double,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,peRatio: null == peRatio ? _self.peRatio : peRatio // ignore: cast_nullable_to_non_nullable
as double,pbRatio: null == pbRatio ? _self.pbRatio : pbRatio // ignore: cast_nullable_to_non_nullable
as double,dividendYield: null == dividendYield ? _self.dividendYield : dividendYield // ignore: cast_nullable_to_non_nullable
as double,beta: null == beta ? _self.beta : beta // ignore: cast_nullable_to_non_nullable
as double,fiftyTwoWeekHigh: null == fiftyTwoWeekHigh ? _self.fiftyTwoWeekHigh : fiftyTwoWeekHigh // ignore: cast_nullable_to_non_nullable
as double,fiftyTwoWeekLow: null == fiftyTwoWeekLow ? _self.fiftyTwoWeekLow : fiftyTwoWeekLow // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AppStockQuote {

 String get symbol; double get price; double get change; double get percentageChange; double get volume; DateTime get timestamp;
/// Create a copy of AppStockQuote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStockQuoteCopyWith<AppStockQuote> get copyWith => _$AppStockQuoteCopyWithImpl<AppStockQuote>(this as AppStockQuote, _$identity);

  /// Serializes this AppStockQuote to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStockQuote&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.price, price) || other.price == price)&&(identical(other.change, change) || other.change == change)&&(identical(other.percentageChange, percentageChange) || other.percentageChange == percentageChange)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,price,change,percentageChange,volume,timestamp);

@override
String toString() {
  return 'AppStockQuote(symbol: $symbol, price: $price, change: $change, percentageChange: $percentageChange, volume: $volume, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $AppStockQuoteCopyWith<$Res>  {
  factory $AppStockQuoteCopyWith(AppStockQuote value, $Res Function(AppStockQuote) _then) = _$AppStockQuoteCopyWithImpl;
@useResult
$Res call({
 String symbol, double price, double change, double percentageChange, double volume, DateTime timestamp
});




}
/// @nodoc
class _$AppStockQuoteCopyWithImpl<$Res>
    implements $AppStockQuoteCopyWith<$Res> {
  _$AppStockQuoteCopyWithImpl(this._self, this._then);

  final AppStockQuote _self;
  final $Res Function(AppStockQuote) _then;

/// Create a copy of AppStockQuote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? price = null,Object? change = null,Object? percentageChange = null,Object? volume = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double,percentageChange: null == percentageChange ? _self.percentageChange : percentageChange // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AppStockQuote].
extension AppStockQuotePatterns on AppStockQuote {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppStockQuote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppStockQuote() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppStockQuote value)  $default,){
final _that = this;
switch (_that) {
case _AppStockQuote():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppStockQuote value)?  $default,){
final _that = this;
switch (_that) {
case _AppStockQuote() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  double price,  double change,  double percentageChange,  double volume,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppStockQuote() when $default != null:
return $default(_that.symbol,_that.price,_that.change,_that.percentageChange,_that.volume,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  double price,  double change,  double percentageChange,  double volume,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _AppStockQuote():
return $default(_that.symbol,_that.price,_that.change,_that.percentageChange,_that.volume,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  double price,  double change,  double percentageChange,  double volume,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _AppStockQuote() when $default != null:
return $default(_that.symbol,_that.price,_that.change,_that.percentageChange,_that.volume,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppStockQuote extends AppStockQuote {
  const _AppStockQuote({required this.symbol, required this.price, required this.change, required this.percentageChange, required this.volume, required this.timestamp}): super._();
  factory _AppStockQuote.fromJson(Map<String, dynamic> json) => _$AppStockQuoteFromJson(json);

@override final  String symbol;
@override final  double price;
@override final  double change;
@override final  double percentageChange;
@override final  double volume;
@override final  DateTime timestamp;

/// Create a copy of AppStockQuote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStockQuoteCopyWith<_AppStockQuote> get copyWith => __$AppStockQuoteCopyWithImpl<_AppStockQuote>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppStockQuoteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppStockQuote&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.price, price) || other.price == price)&&(identical(other.change, change) || other.change == change)&&(identical(other.percentageChange, percentageChange) || other.percentageChange == percentageChange)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,price,change,percentageChange,volume,timestamp);

@override
String toString() {
  return 'AppStockQuote(symbol: $symbol, price: $price, change: $change, percentageChange: $percentageChange, volume: $volume, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$AppStockQuoteCopyWith<$Res> implements $AppStockQuoteCopyWith<$Res> {
  factory _$AppStockQuoteCopyWith(_AppStockQuote value, $Res Function(_AppStockQuote) _then) = __$AppStockQuoteCopyWithImpl;
@override @useResult
$Res call({
 String symbol, double price, double change, double percentageChange, double volume, DateTime timestamp
});




}
/// @nodoc
class __$AppStockQuoteCopyWithImpl<$Res>
    implements _$AppStockQuoteCopyWith<$Res> {
  __$AppStockQuoteCopyWithImpl(this._self, this._then);

  final _AppStockQuote _self;
  final $Res Function(_AppStockQuote) _then;

/// Create a copy of AppStockQuote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? price = null,Object? change = null,Object? percentageChange = null,Object? volume = null,Object? timestamp = null,}) {
  return _then(_AppStockQuote(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double,percentageChange: null == percentageChange ? _self.percentageChange : percentageChange // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$AppStockStats {

 String get symbol; double get averageVolume; double get volatility; double get beta; double get sharpeRatio; double get maxDrawdown; DateTime get lastCalculated;
/// Create a copy of AppStockStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStockStatsCopyWith<AppStockStats> get copyWith => _$AppStockStatsCopyWithImpl<AppStockStats>(this as AppStockStats, _$identity);

  /// Serializes this AppStockStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStockStats&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.averageVolume, averageVolume) || other.averageVolume == averageVolume)&&(identical(other.volatility, volatility) || other.volatility == volatility)&&(identical(other.beta, beta) || other.beta == beta)&&(identical(other.sharpeRatio, sharpeRatio) || other.sharpeRatio == sharpeRatio)&&(identical(other.maxDrawdown, maxDrawdown) || other.maxDrawdown == maxDrawdown)&&(identical(other.lastCalculated, lastCalculated) || other.lastCalculated == lastCalculated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,averageVolume,volatility,beta,sharpeRatio,maxDrawdown,lastCalculated);

@override
String toString() {
  return 'AppStockStats(symbol: $symbol, averageVolume: $averageVolume, volatility: $volatility, beta: $beta, sharpeRatio: $sharpeRatio, maxDrawdown: $maxDrawdown, lastCalculated: $lastCalculated)';
}


}

/// @nodoc
abstract mixin class $AppStockStatsCopyWith<$Res>  {
  factory $AppStockStatsCopyWith(AppStockStats value, $Res Function(AppStockStats) _then) = _$AppStockStatsCopyWithImpl;
@useResult
$Res call({
 String symbol, double averageVolume, double volatility, double beta, double sharpeRatio, double maxDrawdown, DateTime lastCalculated
});




}
/// @nodoc
class _$AppStockStatsCopyWithImpl<$Res>
    implements $AppStockStatsCopyWith<$Res> {
  _$AppStockStatsCopyWithImpl(this._self, this._then);

  final AppStockStats _self;
  final $Res Function(AppStockStats) _then;

/// Create a copy of AppStockStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? averageVolume = null,Object? volatility = null,Object? beta = null,Object? sharpeRatio = null,Object? maxDrawdown = null,Object? lastCalculated = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,averageVolume: null == averageVolume ? _self.averageVolume : averageVolume // ignore: cast_nullable_to_non_nullable
as double,volatility: null == volatility ? _self.volatility : volatility // ignore: cast_nullable_to_non_nullable
as double,beta: null == beta ? _self.beta : beta // ignore: cast_nullable_to_non_nullable
as double,sharpeRatio: null == sharpeRatio ? _self.sharpeRatio : sharpeRatio // ignore: cast_nullable_to_non_nullable
as double,maxDrawdown: null == maxDrawdown ? _self.maxDrawdown : maxDrawdown // ignore: cast_nullable_to_non_nullable
as double,lastCalculated: null == lastCalculated ? _self.lastCalculated : lastCalculated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AppStockStats].
extension AppStockStatsPatterns on AppStockStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppStockStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppStockStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppStockStats value)  $default,){
final _that = this;
switch (_that) {
case _AppStockStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppStockStats value)?  $default,){
final _that = this;
switch (_that) {
case _AppStockStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  double averageVolume,  double volatility,  double beta,  double sharpeRatio,  double maxDrawdown,  DateTime lastCalculated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppStockStats() when $default != null:
return $default(_that.symbol,_that.averageVolume,_that.volatility,_that.beta,_that.sharpeRatio,_that.maxDrawdown,_that.lastCalculated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  double averageVolume,  double volatility,  double beta,  double sharpeRatio,  double maxDrawdown,  DateTime lastCalculated)  $default,) {final _that = this;
switch (_that) {
case _AppStockStats():
return $default(_that.symbol,_that.averageVolume,_that.volatility,_that.beta,_that.sharpeRatio,_that.maxDrawdown,_that.lastCalculated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  double averageVolume,  double volatility,  double beta,  double sharpeRatio,  double maxDrawdown,  DateTime lastCalculated)?  $default,) {final _that = this;
switch (_that) {
case _AppStockStats() when $default != null:
return $default(_that.symbol,_that.averageVolume,_that.volatility,_that.beta,_that.sharpeRatio,_that.maxDrawdown,_that.lastCalculated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppStockStats extends AppStockStats {
  const _AppStockStats({required this.symbol, required this.averageVolume, required this.volatility, required this.beta, required this.sharpeRatio, required this.maxDrawdown, required this.lastCalculated}): super._();
  factory _AppStockStats.fromJson(Map<String, dynamic> json) => _$AppStockStatsFromJson(json);

@override final  String symbol;
@override final  double averageVolume;
@override final  double volatility;
@override final  double beta;
@override final  double sharpeRatio;
@override final  double maxDrawdown;
@override final  DateTime lastCalculated;

/// Create a copy of AppStockStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStockStatsCopyWith<_AppStockStats> get copyWith => __$AppStockStatsCopyWithImpl<_AppStockStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppStockStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppStockStats&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.averageVolume, averageVolume) || other.averageVolume == averageVolume)&&(identical(other.volatility, volatility) || other.volatility == volatility)&&(identical(other.beta, beta) || other.beta == beta)&&(identical(other.sharpeRatio, sharpeRatio) || other.sharpeRatio == sharpeRatio)&&(identical(other.maxDrawdown, maxDrawdown) || other.maxDrawdown == maxDrawdown)&&(identical(other.lastCalculated, lastCalculated) || other.lastCalculated == lastCalculated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,averageVolume,volatility,beta,sharpeRatio,maxDrawdown,lastCalculated);

@override
String toString() {
  return 'AppStockStats(symbol: $symbol, averageVolume: $averageVolume, volatility: $volatility, beta: $beta, sharpeRatio: $sharpeRatio, maxDrawdown: $maxDrawdown, lastCalculated: $lastCalculated)';
}


}

/// @nodoc
abstract mixin class _$AppStockStatsCopyWith<$Res> implements $AppStockStatsCopyWith<$Res> {
  factory _$AppStockStatsCopyWith(_AppStockStats value, $Res Function(_AppStockStats) _then) = __$AppStockStatsCopyWithImpl;
@override @useResult
$Res call({
 String symbol, double averageVolume, double volatility, double beta, double sharpeRatio, double maxDrawdown, DateTime lastCalculated
});




}
/// @nodoc
class __$AppStockStatsCopyWithImpl<$Res>
    implements _$AppStockStatsCopyWith<$Res> {
  __$AppStockStatsCopyWithImpl(this._self, this._then);

  final _AppStockStats _self;
  final $Res Function(_AppStockStats) _then;

/// Create a copy of AppStockStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? averageVolume = null,Object? volatility = null,Object? beta = null,Object? sharpeRatio = null,Object? maxDrawdown = null,Object? lastCalculated = null,}) {
  return _then(_AppStockStats(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,averageVolume: null == averageVolume ? _self.averageVolume : averageVolume // ignore: cast_nullable_to_non_nullable
as double,volatility: null == volatility ? _self.volatility : volatility // ignore: cast_nullable_to_non_nullable
as double,beta: null == beta ? _self.beta : beta // ignore: cast_nullable_to_non_nullable
as double,sharpeRatio: null == sharpeRatio ? _self.sharpeRatio : sharpeRatio // ignore: cast_nullable_to_non_nullable
as double,maxDrawdown: null == maxDrawdown ? _self.maxDrawdown : maxDrawdown // ignore: cast_nullable_to_non_nullable
as double,lastCalculated: null == lastCalculated ? _self.lastCalculated : lastCalculated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
