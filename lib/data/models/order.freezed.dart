// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppOrder {

 String get id; String get symbol; OrderSide get side; OrderType get orderType; double get price; int get quantity; double get filledQuantity; double get averagePrice; OrderStatus get status; ProductType get productType; double? get stopLossPrice; double? get targetPrice; DateTime get createdAt; DateTime get updatedAt; DateTime? get executedAt; String? get remarks;
/// Create a copy of AppOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppOrderCopyWith<AppOrder> get copyWith => _$AppOrderCopyWithImpl<AppOrder>(this as AppOrder, _$identity);

  /// Serializes this AppOrder to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.side, side) || other.side == side)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.filledQuantity, filledQuantity) || other.filledQuantity == filledQuantity)&&(identical(other.averagePrice, averagePrice) || other.averagePrice == averagePrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.stopLossPrice, stopLossPrice) || other.stopLossPrice == stopLossPrice)&&(identical(other.targetPrice, targetPrice) || other.targetPrice == targetPrice)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.executedAt, executedAt) || other.executedAt == executedAt)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,symbol,side,orderType,price,quantity,filledQuantity,averagePrice,status,productType,stopLossPrice,targetPrice,createdAt,updatedAt,executedAt,remarks);

@override
String toString() {
  return 'AppOrder(id: $id, symbol: $symbol, side: $side, orderType: $orderType, price: $price, quantity: $quantity, filledQuantity: $filledQuantity, averagePrice: $averagePrice, status: $status, productType: $productType, stopLossPrice: $stopLossPrice, targetPrice: $targetPrice, createdAt: $createdAt, updatedAt: $updatedAt, executedAt: $executedAt, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class $AppOrderCopyWith<$Res>  {
  factory $AppOrderCopyWith(AppOrder value, $Res Function(AppOrder) _then) = _$AppOrderCopyWithImpl;
@useResult
$Res call({
 String id, String symbol, OrderSide side, OrderType orderType, double price, int quantity, double filledQuantity, double averagePrice, OrderStatus status, ProductType productType, double? stopLossPrice, double? targetPrice, DateTime createdAt, DateTime updatedAt, DateTime? executedAt, String? remarks
});




}
/// @nodoc
class _$AppOrderCopyWithImpl<$Res>
    implements $AppOrderCopyWith<$Res> {
  _$AppOrderCopyWithImpl(this._self, this._then);

  final AppOrder _self;
  final $Res Function(AppOrder) _then;

/// Create a copy of AppOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? symbol = null,Object? side = null,Object? orderType = null,Object? price = null,Object? quantity = null,Object? filledQuantity = null,Object? averagePrice = null,Object? status = null,Object? productType = null,Object? stopLossPrice = freezed,Object? targetPrice = freezed,Object? createdAt = null,Object? updatedAt = null,Object? executedAt = freezed,Object? remarks = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,side: null == side ? _self.side : side // ignore: cast_nullable_to_non_nullable
as OrderSide,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as OrderType,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,filledQuantity: null == filledQuantity ? _self.filledQuantity : filledQuantity // ignore: cast_nullable_to_non_nullable
as double,averagePrice: null == averagePrice ? _self.averagePrice : averagePrice // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as ProductType,stopLossPrice: freezed == stopLossPrice ? _self.stopLossPrice : stopLossPrice // ignore: cast_nullable_to_non_nullable
as double?,targetPrice: freezed == targetPrice ? _self.targetPrice : targetPrice // ignore: cast_nullable_to_non_nullable
as double?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,executedAt: freezed == executedAt ? _self.executedAt : executedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppOrder].
extension AppOrderPatterns on AppOrder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppOrder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppOrder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppOrder value)  $default,){
final _that = this;
switch (_that) {
case _AppOrder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppOrder value)?  $default,){
final _that = this;
switch (_that) {
case _AppOrder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String symbol,  OrderSide side,  OrderType orderType,  double price,  int quantity,  double filledQuantity,  double averagePrice,  OrderStatus status,  ProductType productType,  double? stopLossPrice,  double? targetPrice,  DateTime createdAt,  DateTime updatedAt,  DateTime? executedAt,  String? remarks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppOrder() when $default != null:
return $default(_that.id,_that.symbol,_that.side,_that.orderType,_that.price,_that.quantity,_that.filledQuantity,_that.averagePrice,_that.status,_that.productType,_that.stopLossPrice,_that.targetPrice,_that.createdAt,_that.updatedAt,_that.executedAt,_that.remarks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String symbol,  OrderSide side,  OrderType orderType,  double price,  int quantity,  double filledQuantity,  double averagePrice,  OrderStatus status,  ProductType productType,  double? stopLossPrice,  double? targetPrice,  DateTime createdAt,  DateTime updatedAt,  DateTime? executedAt,  String? remarks)  $default,) {final _that = this;
switch (_that) {
case _AppOrder():
return $default(_that.id,_that.symbol,_that.side,_that.orderType,_that.price,_that.quantity,_that.filledQuantity,_that.averagePrice,_that.status,_that.productType,_that.stopLossPrice,_that.targetPrice,_that.createdAt,_that.updatedAt,_that.executedAt,_that.remarks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String symbol,  OrderSide side,  OrderType orderType,  double price,  int quantity,  double filledQuantity,  double averagePrice,  OrderStatus status,  ProductType productType,  double? stopLossPrice,  double? targetPrice,  DateTime createdAt,  DateTime updatedAt,  DateTime? executedAt,  String? remarks)?  $default,) {final _that = this;
switch (_that) {
case _AppOrder() when $default != null:
return $default(_that.id,_that.symbol,_that.side,_that.orderType,_that.price,_that.quantity,_that.filledQuantity,_that.averagePrice,_that.status,_that.productType,_that.stopLossPrice,_that.targetPrice,_that.createdAt,_that.updatedAt,_that.executedAt,_that.remarks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppOrder extends AppOrder {
  const _AppOrder({required this.id, required this.symbol, required this.side, required this.orderType, required this.price, required this.quantity, required this.filledQuantity, required this.averagePrice, required this.status, required this.productType, required this.stopLossPrice, required this.targetPrice, required this.createdAt, required this.updatedAt, required this.executedAt, required this.remarks}): super._();
  factory _AppOrder.fromJson(Map<String, dynamic> json) => _$AppOrderFromJson(json);

@override final  String id;
@override final  String symbol;
@override final  OrderSide side;
@override final  OrderType orderType;
@override final  double price;
@override final  int quantity;
@override final  double filledQuantity;
@override final  double averagePrice;
@override final  OrderStatus status;
@override final  ProductType productType;
@override final  double? stopLossPrice;
@override final  double? targetPrice;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  DateTime? executedAt;
@override final  String? remarks;

/// Create a copy of AppOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppOrderCopyWith<_AppOrder> get copyWith => __$AppOrderCopyWithImpl<_AppOrder>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppOrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.side, side) || other.side == side)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.filledQuantity, filledQuantity) || other.filledQuantity == filledQuantity)&&(identical(other.averagePrice, averagePrice) || other.averagePrice == averagePrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.stopLossPrice, stopLossPrice) || other.stopLossPrice == stopLossPrice)&&(identical(other.targetPrice, targetPrice) || other.targetPrice == targetPrice)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.executedAt, executedAt) || other.executedAt == executedAt)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,symbol,side,orderType,price,quantity,filledQuantity,averagePrice,status,productType,stopLossPrice,targetPrice,createdAt,updatedAt,executedAt,remarks);

@override
String toString() {
  return 'AppOrder(id: $id, symbol: $symbol, side: $side, orderType: $orderType, price: $price, quantity: $quantity, filledQuantity: $filledQuantity, averagePrice: $averagePrice, status: $status, productType: $productType, stopLossPrice: $stopLossPrice, targetPrice: $targetPrice, createdAt: $createdAt, updatedAt: $updatedAt, executedAt: $executedAt, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class _$AppOrderCopyWith<$Res> implements $AppOrderCopyWith<$Res> {
  factory _$AppOrderCopyWith(_AppOrder value, $Res Function(_AppOrder) _then) = __$AppOrderCopyWithImpl;
@override @useResult
$Res call({
 String id, String symbol, OrderSide side, OrderType orderType, double price, int quantity, double filledQuantity, double averagePrice, OrderStatus status, ProductType productType, double? stopLossPrice, double? targetPrice, DateTime createdAt, DateTime updatedAt, DateTime? executedAt, String? remarks
});




}
/// @nodoc
class __$AppOrderCopyWithImpl<$Res>
    implements _$AppOrderCopyWith<$Res> {
  __$AppOrderCopyWithImpl(this._self, this._then);

  final _AppOrder _self;
  final $Res Function(_AppOrder) _then;

/// Create a copy of AppOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? symbol = null,Object? side = null,Object? orderType = null,Object? price = null,Object? quantity = null,Object? filledQuantity = null,Object? averagePrice = null,Object? status = null,Object? productType = null,Object? stopLossPrice = freezed,Object? targetPrice = freezed,Object? createdAt = null,Object? updatedAt = null,Object? executedAt = freezed,Object? remarks = freezed,}) {
  return _then(_AppOrder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,side: null == side ? _self.side : side // ignore: cast_nullable_to_non_nullable
as OrderSide,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as OrderType,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,filledQuantity: null == filledQuantity ? _self.filledQuantity : filledQuantity // ignore: cast_nullable_to_non_nullable
as double,averagePrice: null == averagePrice ? _self.averagePrice : averagePrice // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as ProductType,stopLossPrice: freezed == stopLossPrice ? _self.stopLossPrice : stopLossPrice // ignore: cast_nullable_to_non_nullable
as double?,targetPrice: freezed == targetPrice ? _self.targetPrice : targetPrice // ignore: cast_nullable_to_non_nullable
as double?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,executedAt: freezed == executedAt ? _self.executedAt : executedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
