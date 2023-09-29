// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get isModal_hud => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  List<CategoryModel> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogBuildableCopyWith<CatalogBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogBuildableCopyWith<$Res> {
  factory $CatalogBuildableCopyWith(
          CatalogBuildable value, $Res Function(CatalogBuildable) then) =
      _$CatalogBuildableCopyWithImpl<$Res, CatalogBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool isModal_hud,
      bool success,
      bool failed,
      dynamic error,
      List<CategoryModel> data});
}

/// @nodoc
class _$CatalogBuildableCopyWithImpl<$Res, $Val extends CatalogBuildable>
    implements $CatalogBuildableCopyWith<$Res> {
  _$CatalogBuildableCopyWithImpl(this._value, this._then);

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
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogBuildableeCopyWith<$Res>
    implements $CatalogBuildableCopyWith<$Res> {
  factory _$$_CatalogBuildableeCopyWith(_$_CatalogBuildablee value,
          $Res Function(_$_CatalogBuildablee) then) =
      __$$_CatalogBuildableeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool isModal_hud,
      bool success,
      bool failed,
      dynamic error,
      List<CategoryModel> data});
}

/// @nodoc
class __$$_CatalogBuildableeCopyWithImpl<$Res>
    extends _$CatalogBuildableCopyWithImpl<$Res, _$_CatalogBuildablee>
    implements _$$_CatalogBuildableeCopyWith<$Res> {
  __$$_CatalogBuildableeCopyWithImpl(
      _$_CatalogBuildablee _value, $Res Function(_$_CatalogBuildablee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isModal_hud = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? data = null,
  }) {
    return _then(_$_CatalogBuildablee(
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
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$_CatalogBuildablee implements _CatalogBuildablee {
  const _$_CatalogBuildablee(
      {this.loading = false,
      this.isModal_hud = false,
      this.success = false,
      this.failed = false,
      this.error,
      final List<CategoryModel> data = const []})
      : _data = data;

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
  final List<CategoryModel> _data;
  @override
  @JsonKey()
  List<CategoryModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CatalogBuildable(loading: $loading, isModal_hud: $isModal_hud, success: $success, failed: $failed, error: $error, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogBuildablee &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isModal_hud, isModal_hud) ||
                other.isModal_hud == isModal_hud) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      isModal_hud,
      success,
      failed,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogBuildableeCopyWith<_$_CatalogBuildablee> get copyWith =>
      __$$_CatalogBuildableeCopyWithImpl<_$_CatalogBuildablee>(
          this, _$identity);
}

abstract class _CatalogBuildablee implements CatalogBuildable {
  const factory _CatalogBuildablee(
      {final bool loading,
      final bool isModal_hud,
      final bool success,
      final bool failed,
      final dynamic error,
      final List<CategoryModel> data}) = _$_CatalogBuildablee;

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
  List<CategoryModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogBuildableeCopyWith<_$_CatalogBuildablee> get copyWith =>
      throw _privateConstructorUsedError;
}
