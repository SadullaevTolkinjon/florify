// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_category_product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllCategoryProductBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  CategoryModel? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllCategoryProductBuildableCopyWith<AllCategoryProductBuildable>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllCategoryProductBuildableCopyWith<$Res> {
  factory $AllCategoryProductBuildableCopyWith(
          AllCategoryProductBuildable value,
          $Res Function(AllCategoryProductBuildable) then) =
      _$AllCategoryProductBuildableCopyWithImpl<$Res,
          AllCategoryProductBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      dynamic error,
      CategoryModel? data});

  $CategoryModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$AllCategoryProductBuildableCopyWithImpl<$Res,
        $Val extends AllCategoryProductBuildable>
    implements $AllCategoryProductBuildableCopyWith<$Res> {
  _$AllCategoryProductBuildableCopyWithImpl(this._value, this._then);

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
    Object? error = freezed,
    Object? data = freezed,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AllCategoryProductBuildableCopyWith<$Res>
    implements $AllCategoryProductBuildableCopyWith<$Res> {
  factory _$$_AllCategoryProductBuildableCopyWith(
          _$_AllCategoryProductBuildable value,
          $Res Function(_$_AllCategoryProductBuildable) then) =
      __$$_AllCategoryProductBuildableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      dynamic error,
      CategoryModel? data});

  @override
  $CategoryModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_AllCategoryProductBuildableCopyWithImpl<$Res>
    extends _$AllCategoryProductBuildableCopyWithImpl<$Res,
        _$_AllCategoryProductBuildable>
    implements _$$_AllCategoryProductBuildableCopyWith<$Res> {
  __$$_AllCategoryProductBuildableCopyWithImpl(
      _$_AllCategoryProductBuildable _value,
      $Res Function(_$_AllCategoryProductBuildable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_AllCategoryProductBuildable(
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ));
  }
}

/// @nodoc

class _$_AllCategoryProductBuildable implements _AllCategoryProductBuildable {
  const _$_AllCategoryProductBuildable(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      this.error,
      this.data});

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
  final dynamic error;
  @override
  final CategoryModel? data;

  @override
  String toString() {
    return 'AllCategoryProductBuildable(loading: $loading, success: $success, failed: $failed, error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllCategoryProductBuildable &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failed,
      const DeepCollectionEquality().hash(error), data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllCategoryProductBuildableCopyWith<_$_AllCategoryProductBuildable>
      get copyWith => __$$_AllCategoryProductBuildableCopyWithImpl<
          _$_AllCategoryProductBuildable>(this, _$identity);
}

abstract class _AllCategoryProductBuildable
    implements AllCategoryProductBuildable {
  const factory _AllCategoryProductBuildable(
      {final bool loading,
      final bool success,
      final bool failed,
      final dynamic error,
      final CategoryModel? data}) = _$_AllCategoryProductBuildable;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  dynamic get error;
  @override
  CategoryModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_AllCategoryProductBuildableCopyWith<_$_AllCategoryProductBuildable>
      get copyWith => throw _privateConstructorUsedError;
}
