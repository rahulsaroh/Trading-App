// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppTrade {

 String get id; String get orderId; String get symbol; OrderSide get side; double get price; int get quantity; double get value; double get brokerage; double get gst; double get stampDuty; double get sebiFee; double get totalCharges; DateTime get executedAt;
/// Create a copy of AppTrade
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppTradeCopyWith<AppTrade> get copyWith => _$AppTradeCopyWithImpl<AppTrade>(this as AppTrade, _$identity);

  /// Serializes this AppTrade to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppTrade&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.side, side) || other.side == side)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.value, value) || other.value == value)&&(identical(other.brokerage, brokerage) || other.brokerage == brokerage)&&(identical(other.gst, gst) || other.gst == gst)&&(identical(other.stampDuty, stampDuty) || other.stampDuty == stampDuty)&&(identical(other.sebiFee, sebiFee) || other.sebiFee == sebiFee)&&(identical(other.totalCharges, totalCharges) || other.totalCharges == totalCharges)&&(identical(other.executedAt, executedAt) || other.executedAt == executedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,symbol,side,price,quantity,value,brokerage,gst,stampDuty,sebiFee,totalCharges,executedAt);

@override
String toString() {
  return 'AppTrade(id: $id, orderId: $orderId, symbol: $symbol, side: $side, price: $price, quantity: $quantity, value: $value, brokerage: $brokerage, gst: $gst, stampDuty: $stampDuty, sebiFee: $sebiFee, totalCharges: $totalCharges, executedAt: $executedAt)';
}


}

/// @nodoc
abstract mixin class $AppTradeCopyWith<$Res>  {
  factory $AppTradeCopyWith(AppTrade value, $Res Function(AppTrade) _then) = _$AppTradeCopyWithImpl;
@useResult
$Res call({
 String id, String orderId, String symbol, OrderSide side, double price, int quantity, double value, double brokerage, double gst, double stampDuty, double sebiFee, double totalCharges, DateTime executedAt
});




}
/// @nodoc
class _$AppTradeCopyWithImpl<$Res>
    implements $AppTradeCopyWith<$Res> {
  _$AppTradeCopyWithImpl(this._self, this._then);

  final AppTrade _self;
  final $Res Function(AppTrade) _then;

/// Create a copy of AppTrade
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? symbol = null,Object? side = null,Object? price = null,Object? quantity = null,Object? value = null,Object? brokerage = null,Object? gst = null,Object? stampDuty = null,Object? sebiFee = null,Object? totalCharges = null,Object? executedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,side: null == side ? _self.side : side // ignore: cast_nullable_to_non_nullable
as OrderSide,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,brokerage: null == brokerage ? _self.brokerage : brokerage // ignore: cast_nullable_to_non_nullable
as double,gst: null == gst ? _self.gst : gst // ignore: cast_nullable_to_non_nullable
as double,stampDuty: null == stampDuty ? _self.stampDuty : stampDuty // ignore: cast_nullable_to_non_nullable
as double,sebiFee: null == sebiFee ? _self.sebiFee : sebiFee // ignore: cast_nullable_to_non_nullable
as double,totalCharges: null == totalCharges ? _self.totalCharges : totalCharges // ignore: cast_nullable_to_non_nullable
as double,executedAt: null == executedAt ? _self.executedAt : executedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AppTrade].
extension AppTradePatterns on AppTrade {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppTrade value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppTrade() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppTrade value)  $default,){
final _that = this;
switch (_that) {
case _AppTrade():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppTrade value)?  $default,){
final _that = this;
switch (_that) {
case _AppTrade() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String orderId,  String symbol,  OrderSide side,  double price,  int quantity,  double value,  double brokerage,  double gst,  double stampDuty,  double sebiFee,  double totalCharges,  DateTime executedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppTrade() when $default != null:
return $default(_that.id,_that.orderId,_that.symbol,_that.side,_that.price,_that.quantity,_that.value,_that.brokerage,_that.gst,_that.stampDuty,_that.sebiFee,_that.totalCharges,_that.executedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String orderId,  String symbol,  OrderSide side,  double price,  int quantity,  double value,  double brokerage,  double gst,  double stampDuty,  double sebiFee,  double totalCharges,  DateTime executedAt)  $default,) {final _that = this;
switch (_that) {
case _AppTrade():
return $default(_that.id,_that.orderId,_that.symbol,_that.side,_that.price,_that.quantity,_that.value,_that.brokerage,_that.gst,_that.stampDuty,_that.sebiFee,_that.totalCharges,_that.executedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String orderId,  String symbol,  OrderSide side,  double price,  int quantity,  double value,  double brokerage,  double gst,  double stampDuty,  double sebiFee,  double totalCharges,  DateTime executedAt)?  $default,) {final _that = this;
switch (_that) {
case _AppTrade() when $default != null:
return $default(_that.id,_that.orderId,_that.symbol,_that.side,_that.price,_that.quantity,_that.value,_that.brokerage,_that.gst,_that.stampDuty,_that.sebiFee,_that.totalCharges,_that.executedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppTrade extends AppTrade {
  const _AppTrade({required this.id, required this.orderId, required this.symbol, required this.side, required this.price, required this.quantity, required this.value, required this.brokerage, required this.gst, required this.stampDuty, required this.sebiFee, required this.totalCharges, required this.executedAt}): super._();
  factory _AppTrade.fromJson(Map<String, dynamic> json) => _$AppTradeFromJson(json);

@override final  String id;
@override final  String orderId;
@override final  String symbol;
@override final  OrderSide side;
@override final  double price;
@override final  int quantity;
@override final  double value;
@override final  double brokerage;
@override final  double gst;
@override final  double stampDuty;
@override final  double sebiFee;
@override final  double totalCharges;
@override final  DateTime executedAt;

/// Create a copy of AppTrade
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppTradeCopyWith<_AppTrade> get copyWith => __$AppTradeCopyWithImpl<_AppTrade>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppTradeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppTrade&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.side, side) || other.side == side)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.value, value) || other.value == value)&&(identical(other.brokerage, brokerage) || other.brokerage == brokerage)&&(identical(other.gst, gst) || other.gst == gst)&&(identical(other.stampDuty, stampDuty) || other.stampDuty == stampDuty)&&(identical(other.sebiFee, sebiFee) || other.sebiFee == sebiFee)&&(identical(other.totalCharges, totalCharges) || other.totalCharges == totalCharges)&&(identical(other.executedAt, executedAt) || other.executedAt == executedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderId,symbol,side,price,quantity,value,brokerage,gst,stampDuty,sebiFee,totalCharges,executedAt);

@override
String toString() {
  return 'AppTrade(id: $id, orderId: $orderId, symbol: $symbol, side: $side, price: $price, quantity: $quantity, value: $value, brokerage: $brokerage, gst: $gst, stampDuty: $stampDuty, sebiFee: $sebiFee, totalCharges: $totalCharges, executedAt: $executedAt)';
}


}

/// @nodoc
abstract mixin class _$AppTradeCopyWith<$Res> implements $AppTradeCopyWith<$Res> {
  factory _$AppTradeCopyWith(_AppTrade value, $Res Function(_AppTrade) _then) = __$AppTradeCopyWithImpl;
@override @useResult
$Res call({
 String id, String orderId, String symbol, OrderSide side, double price, int quantity, double value, double brokerage, double gst, double stampDuty, double sebiFee, double totalCharges, DateTime executedAt
});




}
/// @nodoc
class __$AppTradeCopyWithImpl<$Res>
    implements _$AppTradeCopyWith<$Res> {
  __$AppTradeCopyWithImpl(this._self, this._then);

  final _AppTrade _self;
  final $Res Function(_AppTrade) _then;

/// Create a copy of AppTrade
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? symbol = null,Object? side = null,Object? price = null,Object? quantity = null,Object? value = null,Object? brokerage = null,Object? gst = null,Object? stampDuty = null,Object? sebiFee = null,Object? totalCharges = null,Object? executedAt = null,}) {
  return _then(_AppTrade(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,side: null == side ? _self.side : side // ignore: cast_nullable_to_non_nullable
as OrderSide,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,brokerage: null == brokerage ? _self.brokerage : brokerage // ignore: cast_nullable_to_non_nullable
as double,gst: null == gst ? _self.gst : gst // ignore: cast_nullable_to_non_nullable
as double,stampDuty: null == stampDuty ? _self.stampDuty : stampDuty // ignore: cast_nullable_to_non_nullable
as double,sebiFee: null == sebiFee ? _self.sebiFee : sebiFee // ignore: cast_nullable_to_non_nullable
as double,totalCharges: null == totalCharges ? _self.totalCharges : totalCharges // ignore: cast_nullable_to_non_nullable
as double,executedAt: null == executedAt ? _self.executedAt : executedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
