// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopDetailsBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  Salesman? get shop => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopDetailsBuildableCopyWith<ShopDetailsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopDetailsBuildableCopyWith<$Res> {
  factory $ShopDetailsBuildableCopyWith(ShopDetailsBuildable value,
          $Res Function(ShopDetailsBuildable) then) =
      _$ShopDetailsBuildableCopyWithImpl<$Res, ShopDetailsBuildable>;
  @useResult
  $Res call(
      {bool loading, bool success, bool failed, Salesman? shop, dynamic error});

  $SalesmanCopyWith<$Res>? get shop;
}

/// @nodoc
class _$ShopDetailsBuildableCopyWithImpl<$Res,
        $Val extends ShopDetailsBuildable>
    implements $ShopDetailsBuildableCopyWith<$Res> {
  _$ShopDetailsBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? shop = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Salesman?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SalesmanCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $SalesmanCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShopDetailsBuildableCopyWith<$Res>
    implements $ShopDetailsBuildableCopyWith<$Res> {
  factory _$$_ShopDetailsBuildableCopyWith(_$_ShopDetailsBuildable value,
          $Res Function(_$_ShopDetailsBuildable) then) =
      __$$_ShopDetailsBuildableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading, bool success, bool failed, Salesman? shop, dynamic error});

  @override
  $SalesmanCopyWith<$Res>? get shop;
}

/// @nodoc
class __$$_ShopDetailsBuildableCopyWithImpl<$Res>
    extends _$ShopDetailsBuildableCopyWithImpl<$Res, _$_ShopDetailsBuildable>
    implements _$$_ShopDetailsBuildableCopyWith<$Res> {
  __$$_ShopDetailsBuildableCopyWithImpl(_$_ShopDetailsBuildable _value,
      $Res Function(_$_ShopDetailsBuildable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? shop = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ShopDetailsBuildable(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Salesman?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ShopDetailsBuildable implements _ShopDetailsBuildable {
  const _$_ShopDetailsBuildable(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      this.shop,
      this.error});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool failed;
  @override
  final Salesman? shop;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'ShopDetailsBuildable(loading: $loading, success: $success, failed: $failed, shop: $shop, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopDetailsBuildable &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failed, shop,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopDetailsBuildableCopyWith<_$_ShopDetailsBuildable> get copyWith =>
      __$$_ShopDetailsBuildableCopyWithImpl<_$_ShopDetailsBuildable>(
          this, _$identity);
}

abstract class _ShopDetailsBuildable implements ShopDetailsBuildable {
  const factory _ShopDetailsBuildable(
      {final bool loading,
      final bool success,
      final bool failed,
      final Salesman? shop,
      final dynamic error}) = _$_ShopDetailsBuildable;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  Salesman? get shop;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$_ShopDetailsBuildableCopyWith<_$_ShopDetailsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}
