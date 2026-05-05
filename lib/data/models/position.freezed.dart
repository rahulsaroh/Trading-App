// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppPosition {

 String get id; String get symbol; String get name; PositionType get type; double get averagePrice; double get currentPrice; int get quantity; double get pnl; double get pnlPercentage; double get dayPnl; double get dayPnLPercentage; DateTime get openedAt; DateTime? get closedAt; bool get isActive; double get brokerage;
/// Create a copy of AppPosition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppPositionCopyWith<AppPosition> get copyWith => _$AppPositionCopyWithImpl<AppPosition>(this as AppPosition, _$identity);

  /// Serializes this AppPosition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppPosition&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.averagePrice, averagePrice) || other.averagePrice == averagePrice)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.pnl, pnl) || other.pnl == pnl)&&(identical(other.pnlPercentage, pnlPercentage) || other.pnlPercentage == pnlPercentage)&&(identical(other.dayPnl, dayPnl) || other.dayPnl == dayPnl)&&(identical(other.dayPnLPercentage, dayPnLPercentage) || other.dayPnLPercentage == dayPnLPercentage)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.brokerage, brokerage) || other.brokerage == brokerage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,symbol,name,type,averagePrice,currentPrice,quantity,pnl,pnlPercentage,dayPnl,dayPnLPercentage,openedAt,closedAt,isActive,brokerage);

@override
String toString() {
  return 'AppPosition(id: $id, symbol: $symbol, name: $name, type: $type, averagePrice: $averagePrice, currentPrice: $currentPrice, quantity: $quantity, pnl: $pnl, pnlPercentage: $pnlPercentage, dayPnl: $dayPnl, dayPnLPercentage: $dayPnLPercentage, openedAt: $openedAt, closedAt: $closedAt, isActive: $isActive, brokerage: $brokerage)';
}


}

/// @nodoc
abstract mixin class $AppPositionCopyWith<$Res>  {
  factory $AppPositionCopyWith(AppPosition value, $Res Function(AppPosition) _then) = _$AppPositionCopyWithImpl;
@useResult
$Res call({
 String id, String symbol, String name, PositionType type, double averagePrice, double currentPrice, int quantity, double pnl, double pnlPercentage, double dayPnl, double dayPnLPercentage, DateTime openedAt, DateTime? closedAt, bool isActive, double brokerage
});




}
/// @nodoc
class _$AppPositionCopyWithImpl<$Res>
    implements $AppPositionCopyWith<$Res> {
  _$AppPositionCopyWithImpl(this._self, this._then);

  final AppPosition _self;
  final $Res Function(AppPosition) _then;

/// Create a copy of AppPosition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? symbol = null,Object? name = null,Object? type = null,Object? averagePrice = null,Object? currentPrice = null,Object? quantity = null,Object? pnl = null,Object? pnlPercentage = null,Object? dayPnl = null,Object? dayPnLPercentage = null,Object? openedAt = null,Object? closedAt = freezed,Object? isActive = null,Object? brokerage = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PositionType,averagePrice: null == averagePrice ? _self.averagePrice : averagePrice // ignore: cast_nullable_to_non_nullable
as double,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,pnl: null == pnl ? _self.pnl : pnl // ignore: cast_nullable_to_non_nullable
as double,pnlPercentage: null == pnlPercentage ? _self.pnlPercentage : pnlPercentage // ignore: cast_nullable_to_non_nullable
as double,dayPnl: null == dayPnl ? _self.dayPnl : dayPnl // ignore: cast_nullable_to_non_nullable
as double,dayPnLPercentage: null == dayPnLPercentage ? _self.dayPnLPercentage : dayPnLPercentage // ignore: cast_nullable_to_non_nullable
as double,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,brokerage: null == brokerage ? _self.brokerage : brokerage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AppPosition].
extension AppPositionPatterns on AppPosition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppPosition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppPosition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppPosition value)  $default,){
final _that = this;
switch (_that) {
case _AppPosition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppPosition value)?  $default,){
final _that = this;
switch (_that) {
case _AppPosition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String symbol,  String name,  PositionType type,  double averagePrice,  double currentPrice,  int quantity,  double pnl,  double pnlPercentage,  double dayPnl,  double dayPnLPercentage,  DateTime openedAt,  DateTime? closedAt,  bool isActive,  double brokerage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppPosition() when $default != null:
return $default(_that.id,_that.symbol,_that.name,_that.type,_that.averagePrice,_that.currentPrice,_that.quantity,_that.pnl,_that.pnlPercentage,_that.dayPnl,_that.dayPnLPercentage,_that.openedAt,_that.closedAt,_that.isActive,_that.brokerage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String symbol,  String name,  PositionType type,  double averagePrice,  double currentPrice,  int quantity,  double pnl,  double pnlPercentage,  double dayPnl,  double dayPnLPercentage,  DateTime openedAt,  DateTime? closedAt,  bool isActive,  double brokerage)  $default,) {final _that = this;
switch (_that) {
case _AppPosition():
return $default(_that.id,_that.symbol,_that.name,_that.type,_that.averagePrice,_that.currentPrice,_that.quantity,_that.pnl,_that.pnlPercentage,_that.dayPnl,_that.dayPnLPercentage,_that.openedAt,_that.closedAt,_that.isActive,_that.brokerage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String symbol,  String name,  PositionType type,  double averagePrice,  double currentPrice,  int quantity,  double pnl,  double pnlPercentage,  double dayPnl,  double dayPnLPercentage,  DateTime openedAt,  DateTime? closedAt,  bool isActive,  double brokerage)?  $default,) {final _that = this;
switch (_that) {
case _AppPosition() when $default != null:
return $default(_that.id,_that.symbol,_that.name,_that.type,_that.averagePrice,_that.currentPrice,_that.quantity,_that.pnl,_that.pnlPercentage,_that.dayPnl,_that.dayPnLPercentage,_that.openedAt,_that.closedAt,_that.isActive,_that.brokerage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppPosition extends AppPosition {
  const _AppPosition({required this.id, required this.symbol, required this.name, required this.type, required this.averagePrice, required this.currentPrice, required this.quantity, required this.pnl, required this.pnlPercentage, required this.dayPnl, required this.dayPnLPercentage, required this.openedAt, required this.closedAt, required this.isActive, required this.brokerage}): super._();
  factory _AppPosition.fromJson(Map<String, dynamic> json) => _$AppPositionFromJson(json);

@override final  String id;
@override final  String symbol;
@override final  String name;
@override final  PositionType type;
@override final  double averagePrice;
@override final  double currentPrice;
@override final  int quantity;
@override final  double pnl;
@override final  double pnlPercentage;
@override final  double dayPnl;
@override final  double dayPnLPercentage;
@override final  DateTime openedAt;
@override final  DateTime? closedAt;
@override final  bool isActive;
@override final  double brokerage;

/// Create a copy of AppPosition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppPositionCopyWith<_AppPosition> get copyWith => __$AppPositionCopyWithImpl<_AppPosition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppPositionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppPosition&&(identical(other.id, id) || other.id == id)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.averagePrice, averagePrice) || other.averagePrice == averagePrice)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.pnl, pnl) || other.pnl == pnl)&&(identical(other.pnlPercentage, pnlPercentage) || other.pnlPercentage == pnlPercentage)&&(identical(other.dayPnl, dayPnl) || other.dayPnl == dayPnl)&&(identical(other.dayPnLPercentage, dayPnLPercentage) || other.dayPnLPercentage == dayPnLPercentage)&&(identical(other.openedAt, openedAt) || other.openedAt == openedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.brokerage, brokerage) || other.brokerage == brokerage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,symbol,name,type,averagePrice,currentPrice,quantity,pnl,pnlPercentage,dayPnl,dayPnLPercentage,openedAt,closedAt,isActive,brokerage);

@override
String toString() {
  return 'AppPosition(id: $id, symbol: $symbol, name: $name, type: $type, averagePrice: $averagePrice, currentPrice: $currentPrice, quantity: $quantity, pnl: $pnl, pnlPercentage: $pnlPercentage, dayPnl: $dayPnl, dayPnLPercentage: $dayPnLPercentage, openedAt: $openedAt, closedAt: $closedAt, isActive: $isActive, brokerage: $brokerage)';
}


}

/// @nodoc
abstract mixin class _$AppPositionCopyWith<$Res> implements $AppPositionCopyWith<$Res> {
  factory _$AppPositionCopyWith(_AppPosition value, $Res Function(_AppPosition) _then) = __$AppPositionCopyWithImpl;
@override @useResult
$Res call({
 String id, String symbol, String name, PositionType type, double averagePrice, double currentPrice, int quantity, double pnl, double pnlPercentage, double dayPnl, double dayPnLPercentage, DateTime openedAt, DateTime? closedAt, bool isActive, double brokerage
});




}
/// @nodoc
class __$AppPositionCopyWithImpl<$Res>
    implements _$AppPositionCopyWith<$Res> {
  __$AppPositionCopyWithImpl(this._self, this._then);

  final _AppPosition _self;
  final $Res Function(_AppPosition) _then;

/// Create a copy of AppPosition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? symbol = null,Object? name = null,Object? type = null,Object? averagePrice = null,Object? currentPrice = null,Object? quantity = null,Object? pnl = null,Object? pnlPercentage = null,Object? dayPnl = null,Object? dayPnLPercentage = null,Object? openedAt = null,Object? closedAt = freezed,Object? isActive = null,Object? brokerage = null,}) {
  return _then(_AppPosition(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PositionType,averagePrice: null == averagePrice ? _self.averagePrice : averagePrice // ignore: cast_nullable_to_non_nullable
as double,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,pnl: null == pnl ? _self.pnl : pnl // ignore: cast_nullable_to_non_nullable
as double,pnlPercentage: null == pnlPercentage ? _self.pnlPercentage : pnlPercentage // ignore: cast_nullable_to_non_nullable
as double,dayPnl: null == dayPnl ? _self.dayPnl : dayPnl // ignore: cast_nullable_to_non_nullable
as double,dayPnLPercentage: null == dayPnLPercentage ? _self.dayPnLPercentage : dayPnLPercentage // ignore: cast_nullable_to_non_nullable
as double,openedAt: null == openedAt ? _self.openedAt : openedAt // ignore: cast_nullable_to_non_nullable
as DateTime,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,brokerage: null == brokerage ? _self.brokerage : brokerage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
