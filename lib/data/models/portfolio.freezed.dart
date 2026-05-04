// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppPortfolio {

 double get cashBalance; double get totalValue; double get totalPnl; double get dayPnl; List<AppPosition> get positions; DateTime get lastUpdated;
/// Create a copy of AppPortfolio
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppPortfolioCopyWith<AppPortfolio> get copyWith => _$AppPortfolioCopyWithImpl<AppPortfolio>(this as AppPortfolio, _$identity);

  /// Serializes this AppPortfolio to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppPortfolio&&(identical(other.cashBalance, cashBalance) || other.cashBalance == cashBalance)&&(identical(other.totalValue, totalValue) || other.totalValue == totalValue)&&(identical(other.totalPnl, totalPnl) || other.totalPnl == totalPnl)&&(identical(other.dayPnl, dayPnl) || other.dayPnl == dayPnl)&&const DeepCollectionEquality().equals(other.positions, positions)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cashBalance,totalValue,totalPnl,dayPnl,const DeepCollectionEquality().hash(positions),lastUpdated);

@override
String toString() {
  return 'AppPortfolio(cashBalance: $cashBalance, totalValue: $totalValue, totalPnl: $totalPnl, dayPnl: $dayPnl, positions: $positions, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class $AppPortfolioCopyWith<$Res>  {
  factory $AppPortfolioCopyWith(AppPortfolio value, $Res Function(AppPortfolio) _then) = _$AppPortfolioCopyWithImpl;
@useResult
$Res call({
 double cashBalance, double totalValue, double totalPnl, double dayPnl, List<AppPosition> positions, DateTime lastUpdated
});




}
/// @nodoc
class _$AppPortfolioCopyWithImpl<$Res>
    implements $AppPortfolioCopyWith<$Res> {
  _$AppPortfolioCopyWithImpl(this._self, this._then);

  final AppPortfolio _self;
  final $Res Function(AppPortfolio) _then;

/// Create a copy of AppPortfolio
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cashBalance = null,Object? totalValue = null,Object? totalPnl = null,Object? dayPnl = null,Object? positions = null,Object? lastUpdated = null,}) {
  return _then(_self.copyWith(
cashBalance: null == cashBalance ? _self.cashBalance : cashBalance // ignore: cast_nullable_to_non_nullable
as double,totalValue: null == totalValue ? _self.totalValue : totalValue // ignore: cast_nullable_to_non_nullable
as double,totalPnl: null == totalPnl ? _self.totalPnl : totalPnl // ignore: cast_nullable_to_non_nullable
as double,dayPnl: null == dayPnl ? _self.dayPnl : dayPnl // ignore: cast_nullable_to_non_nullable
as double,positions: null == positions ? _self.positions : positions // ignore: cast_nullable_to_non_nullable
as List<AppPosition>,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AppPortfolio].
extension AppPortfolioPatterns on AppPortfolio {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppPortfolio value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppPortfolio() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppPortfolio value)  $default,){
final _that = this;
switch (_that) {
case _AppPortfolio():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppPortfolio value)?  $default,){
final _that = this;
switch (_that) {
case _AppPortfolio() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double cashBalance,  double totalValue,  double totalPnl,  double dayPnl,  List<AppPosition> positions,  DateTime lastUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppPortfolio() when $default != null:
return $default(_that.cashBalance,_that.totalValue,_that.totalPnl,_that.dayPnl,_that.positions,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double cashBalance,  double totalValue,  double totalPnl,  double dayPnl,  List<AppPosition> positions,  DateTime lastUpdated)  $default,) {final _that = this;
switch (_that) {
case _AppPortfolio():
return $default(_that.cashBalance,_that.totalValue,_that.totalPnl,_that.dayPnl,_that.positions,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double cashBalance,  double totalValue,  double totalPnl,  double dayPnl,  List<AppPosition> positions,  DateTime lastUpdated)?  $default,) {final _that = this;
switch (_that) {
case _AppPortfolio() when $default != null:
return $default(_that.cashBalance,_that.totalValue,_that.totalPnl,_that.dayPnl,_that.positions,_that.lastUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppPortfolio extends AppPortfolio {
  const _AppPortfolio({required this.cashBalance, required this.totalValue, required this.totalPnl, required this.dayPnl, required final  List<AppPosition> positions, required this.lastUpdated}): _positions = positions,super._();
  factory _AppPortfolio.fromJson(Map<String, dynamic> json) => _$AppPortfolioFromJson(json);

@override final  double cashBalance;
@override final  double totalValue;
@override final  double totalPnl;
@override final  double dayPnl;
 final  List<AppPosition> _positions;
@override List<AppPosition> get positions {
  if (_positions is EqualUnmodifiableListView) return _positions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_positions);
}

@override final  DateTime lastUpdated;

/// Create a copy of AppPortfolio
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppPortfolioCopyWith<_AppPortfolio> get copyWith => __$AppPortfolioCopyWithImpl<_AppPortfolio>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppPortfolioToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppPortfolio&&(identical(other.cashBalance, cashBalance) || other.cashBalance == cashBalance)&&(identical(other.totalValue, totalValue) || other.totalValue == totalValue)&&(identical(other.totalPnl, totalPnl) || other.totalPnl == totalPnl)&&(identical(other.dayPnl, dayPnl) || other.dayPnl == dayPnl)&&const DeepCollectionEquality().equals(other._positions, _positions)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cashBalance,totalValue,totalPnl,dayPnl,const DeepCollectionEquality().hash(_positions),lastUpdated);

@override
String toString() {
  return 'AppPortfolio(cashBalance: $cashBalance, totalValue: $totalValue, totalPnl: $totalPnl, dayPnl: $dayPnl, positions: $positions, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class _$AppPortfolioCopyWith<$Res> implements $AppPortfolioCopyWith<$Res> {
  factory _$AppPortfolioCopyWith(_AppPortfolio value, $Res Function(_AppPortfolio) _then) = __$AppPortfolioCopyWithImpl;
@override @useResult
$Res call({
 double cashBalance, double totalValue, double totalPnl, double dayPnl, List<AppPosition> positions, DateTime lastUpdated
});




}
/// @nodoc
class __$AppPortfolioCopyWithImpl<$Res>
    implements _$AppPortfolioCopyWith<$Res> {
  __$AppPortfolioCopyWithImpl(this._self, this._then);

  final _AppPortfolio _self;
  final $Res Function(_AppPortfolio) _then;

/// Create a copy of AppPortfolio
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cashBalance = null,Object? totalValue = null,Object? totalPnl = null,Object? dayPnl = null,Object? positions = null,Object? lastUpdated = null,}) {
  return _then(_AppPortfolio(
cashBalance: null == cashBalance ? _self.cashBalance : cashBalance // ignore: cast_nullable_to_non_nullable
as double,totalValue: null == totalValue ? _self.totalValue : totalValue // ignore: cast_nullable_to_non_nullable
as double,totalPnl: null == totalPnl ? _self.totalPnl : totalPnl // ignore: cast_nullable_to_non_nullable
as double,dayPnl: null == dayPnl ? _self.dayPnl : dayPnl // ignore: cast_nullable_to_non_nullable
as double,positions: null == positions ? _self._positions : positions // ignore: cast_nullable_to_non_nullable
as List<AppPosition>,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$AppPositionSummary {

 String get symbol; String get name; double get quantity; double get entryPrice; double get currentPrice; double get pnl; double get pnlPercentage; DateTime get openedAt; bool get isActive;
/// Create a copy of AppPositionSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppPositionSummaryCopyWith<AppPositionSummary> get copyWith => _$AppPositionSummaryCopyWithImpl<AppPositionSummary>(this as AppPositionSummary, _$identity);

  /// Serializes this AppPositionSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppPositionSummary&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.entryPrice, entryPrice) || other.entryPrice == entryPrice)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.pnl, pnl) || other.pnl == pnl)&&(identical(other.pnlPercentage, pnlPercentage) || other.pnlPercentage == pnlPercentage)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,name,quantity,entryPrice,currentPrice,pnl,pnlPercentage,openedAt,isActive);

@override
String toString() {
  return 'AppPositionSummary(symbol: $symbol, name: $name, quantity: $quantity, entryPrice: $entryPrice, currentPrice: $currentPrice, pnl: $pnl, pnlPercentage: $pnlPercentage, openedAt: $openedAt, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $AppPositionSummaryCopyWith<$Res>  {
  factory $AppPositionSummaryCopyWith(AppPositionSummary value, $Res Function(AppPositionSummary) _then) = _$AppPositionSummaryCopyWithImpl;
@useResult
$Res call({
 String symbol, String name, double quantity, double entryPrice, double currentPrice, double pnl, double pnlPercentage, DateTime openedAt, bool isActive
});




}
/// @nodoc
class _$AppPositionSummaryCopyWithImpl<$Res>
    implements $AppPositionSummaryCopyWith<$Res> {
  _$AppPositionSummaryCopyWithImpl(this._self, this._then);

  final AppPositionSummary _self;
  final $Res Function(AppPositionSummary) _then;

/// Create a copy of AppPositionSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? name = null,Object? quantity = null,Object? entryPrice = null,Object? currentPrice = null,Object? pnl = null,Object? pnlPercentage = null,Object? openedAt = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,entryPrice: null == entryPrice ? _self.entryPrice : entryPrice // ignore: cast_nullable_to_non_nullable
as double,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as double,pnl: null == pnl ? _self.pnl : pnl // ignore: cast_nullable_to_non_nullable
as double,pnlPercentage: null == pnlPercentage ? _self.pnlPercentage : pnlPercentage // ignore: cast_nullable_to_non_nullable
as double,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppPositionSummary].
extension AppPositionSummaryPatterns on AppPositionSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppPositionSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppPositionSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppPositionSummary value)  $default,){
final _that = this;
switch (_that) {
case _AppPositionSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppPositionSummary value)?  $default,){
final _that = this;
switch (_that) {
case _AppPositionSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  String name,  double quantity,  double entryPrice,  double currentPrice,  double pnl,  double pnlPercentage,  DateTime openedAt,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppPositionSummary() when $default != null:
return $default(_that.symbol,_that.name,_that.quantity,_that.entryPrice,_that.currentPrice,_that.pnl,_that.pnlPercentage,_that.openedAt,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  String name,  double quantity,  double entryPrice,  double currentPrice,  double pnl,  double pnlPercentage,  DateTime openedAt,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _AppPositionSummary():
return $default(_that.symbol,_that.name,_that.quantity,_that.entryPrice,_that.currentPrice,_that.pnl,_that.pnlPercentage,_that.openedAt,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  String name,  double quantity,  double entryPrice,  double currentPrice,  double pnl,  double pnlPercentage,  DateTime openedAt,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _AppPositionSummary() when $default != null:
return $default(_that.symbol,_that.name,_that.quantity,_that.entryPrice,_that.currentPrice,_that.pnl,_that.pnlPercentage,_that.openedAt,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppPositionSummary extends AppPositionSummary {
  const _AppPositionSummary({required this.symbol, required this.name, required this.quantity, required this.entryPrice, required this.currentPrice, required this.pnl, required this.pnlPercentage, required this.openedAt, required this.isActive}): super._();
  factory _AppPositionSummary.fromJson(Map<String, dynamic> json) => _$AppPositionSummaryFromJson(json);

@override final  String symbol;
@override final  String name;
@override final  double quantity;
@override final  double entryPrice;
@override final  double currentPrice;
@override final  double pnl;
@override final  double pnlPercentage;
@override final  DateTime openedAt;
@override final  bool isActive;

/// Create a copy of AppPositionSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppPositionSummaryCopyWith<_AppPositionSummary> get copyWith => __$AppPositionSummaryCopyWithImpl<_AppPositionSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppPositionSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppPositionSummary&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.entryPrice, entryPrice) || other.entryPrice == entryPrice)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.pnl, pnl) || other.pnl == pnl)&&(identical(other.pnlPercentage, pnlPercentage) || other.pnlPercentage == pnlPercentage)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,name,quantity,entryPrice,currentPrice,pnl,pnlPercentage,openedAt,isActive);

@override
String toString() {
  return 'AppPositionSummary(symbol: $symbol, name: $name, quantity: $quantity, entryPrice: $entryPrice, currentPrice: $currentPrice, pnl: $pnl, pnlPercentage: $pnlPercentage, openedAt: $openedAt, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$AppPositionSummaryCopyWith<$Res> implements $AppPositionSummaryCopyWith<$Res> {
  factory _$AppPositionSummaryCopyWith(_AppPositionSummary value, $Res Function(_AppPositionSummary) _then) = __$AppPositionSummaryCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String name, double quantity, double entryPrice, double currentPrice, double pnl, double pnlPercentage, DateTime openedAt, bool isActive
});




}
/// @nodoc
class __$AppPositionSummaryCopyWithImpl<$Res>
    implements _$AppPositionSummaryCopyWith<$Res> {
  __$AppPositionSummaryCopyWithImpl(this._self, this._then);

  final _AppPositionSummary _self;
  final $Res Function(_AppPositionSummary) _then;

/// Create a copy of AppPositionSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? name = null,Object? quantity = null,Object? entryPrice = null,Object? currentPrice = null,Object? pnl = null,Object? pnlPercentage = null,Object? openedAt = null,Object? isActive = null,}) {
  return _then(_AppPositionSummary(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,entryPrice: null == entryPrice ? _self.entryPrice : entryPrice // ignore: cast_nullable_to_non_nullable
as double,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as double,pnl: null == pnl ? _self.pnl : pnl // ignore: cast_nullable_to_non_nullable
as double,pnlPercentage: null == pnlPercentage ? _self.pnlPercentage : pnlPercentage // ignore: cast_nullable_to_non_nullable
as double,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
