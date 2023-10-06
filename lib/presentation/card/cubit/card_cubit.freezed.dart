// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardBuildableState {
  bool get loading => throw _privateConstructorUsedError;
  bool get isModal_hud => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  List<CardProduct>? get prodcuts => throw _privateConstructorUsedError;
  int get allPrice => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardBuildableStateCopyWith<CardBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardBuildableStateCopyWith<$Res> {
  factory $CardBuildableStateCopyWith(
          CardBuildableState value, $Res Function(CardBuildableState) then) =
      _$CardBuildableStateCopyWithImpl<$Res, CardBuildableState>;
  @useResult
  $Res call(
      {bool loading,
      bool isModal_hud,
      bool success,
      bool failed,
      dynamic error,
      List<CardProduct>? prodcuts,
      int allPrice,
      int price});
}

/// @nodoc
class _$CardBuildableStateCopyWithImpl<$Res, $Val extends CardBuildableState>
    implements $CardBuildableStateCopyWith<$Res> {
  _$CardBuildableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isModal_hud = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? prodcuts = freezed,
    Object? allPrice = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isModal_hud: null == isModal_hud
          ? _value.isModal_hud
          : isModal_hud // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      prodcuts: freezed == prodcuts
          ? _value.prodcuts
          : prodcuts // ignore: cast_nullable_to_non_nullable
              as List<CardProduct>?,
      allPrice: null == allPrice
          ? _value.allPrice
          : allPrice // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardBuildableStateCopyWith<$Res>
    implements $CardBuildableStateCopyWith<$Res> {
  factory _$$_CardBuildableStateCopyWith(_$_CardBuildableState value,
          $Res Function(_$_CardBuildableState) then) =
      __$$_CardBuildableStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool isModal_hud,
      bool success,
      bool failed,
      dynamic error,
      List<CardProduct>? prodcuts,
      int allPrice,
      int price});
}

/// @nodoc
class __$$_CardBuildableStateCopyWithImpl<$Res>
    extends _$CardBuildableStateCopyWithImpl<$Res, _$_CardBuildableState>
    implements _$$_CardBuildableStateCopyWith<$Res> {
  __$$_CardBuildableStateCopyWithImpl(
      _$_CardBuildableState _value, $Res Function(_$_CardBuildableState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isModal_hud = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? prodcuts = freezed,
    Object? allPrice = null,
    Object? price = null,
  }) {
    return _then(_$_CardBuildableState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isModal_hud: null == isModal_hud
          ? _value.isModal_hud
          : isModal_hud // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      prodcuts: freezed == prodcuts
          ? _value._prodcuts
          : prodcuts // ignore: cast_nullable_to_non_nullable
              as List<CardProduct>?,
      allPrice: null == allPrice
          ? _value.allPrice
          : allPrice // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CardBuildableState implements _CardBuildableState {
  const _$_CardBuildableState(
      {this.loading = false,
      this.isModal_hud = false,
      this.success = false,
      this.failed = false,
      this.error,
      final List<CardProduct>? prodcuts = const [],
      this.allPrice = 0,
      this.price = 0})
      : _prodcuts = prodcuts;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool isModal_hud;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool failed;
  @override
  final dynamic error;
  final List<CardProduct>? _prodcuts;
  @override
  @JsonKey()
  List<CardProduct>? get prodcuts {
    final value = _prodcuts;
    if (value == null) return null;
    if (_prodcuts is EqualUnmodifiableListView) return _prodcuts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int allPrice;
  @override
  @JsonKey()
  final int price;

  @override
  String toString() {
    return 'CardBuildableState(loading: $loading, isModal_hud: $isModal_hud, success: $success, failed: $failed, error: $error, prodcuts: $prodcuts, allPrice: $allPrice, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardBuildableState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isModal_hud, isModal_hud) ||
                other.isModal_hud == isModal_hud) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._prodcuts, _prodcuts) &&
            (identical(other.allPrice, allPrice) ||
                other.allPrice == allPrice) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      isModal_hud,
      success,
      failed,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_prodcuts),
      allPrice,
      price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardBuildableStateCopyWith<_$_CardBuildableState> get copyWith =>
      __$$_CardBuildableStateCopyWithImpl<_$_CardBuildableState>(
          this, _$identity);
}

abstract class _CardBuildableState implements CardBuildableState {
  const factory _CardBuildableState(
      {final bool loading,
      final bool isModal_hud,
      final bool success,
      final bool failed,
      final dynamic error,
      final List<CardProduct>? prodcuts,
      final int allPrice,
      final int price}) = _$_CardBuildableState;

  @override
  bool get loading;
  @override
  bool get isModal_hud;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  dynamic get error;
  @override
  List<CardProduct>? get prodcuts;
  @override
  int get allPrice;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_CardBuildableStateCopyWith<_$_CardBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}
