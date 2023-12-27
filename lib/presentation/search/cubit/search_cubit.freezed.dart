// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchBuildableState {
  bool get loading => throw _privateConstructorUsedError;
  bool get isModal_hud => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;
  int? get nextPageKey => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchBuildableStateCopyWith<SearchBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBuildableStateCopyWith<$Res> {
  factory $SearchBuildableStateCopyWith(SearchBuildableState value,
          $Res Function(SearchBuildableState) then) =
      _$SearchBuildableStateCopyWithImpl<$Res, SearchBuildableState>;
  @useResult
  $Res call(
      {bool loading,
      bool isModal_hud,
      bool success,
      bool failed,
      List<Product>? products,
      int? nextPageKey,
      dynamic error});
}

/// @nodoc
class _$SearchBuildableStateCopyWithImpl<$Res,
        $Val extends SearchBuildableState>
    implements $SearchBuildableStateCopyWith<$Res> {
  _$SearchBuildableStateCopyWithImpl(this._value, this._then);

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
    Object? products = freezed,
    Object? nextPageKey = freezed,
    Object? error = freezed,
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
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchBuildableStateCopyWith<$Res>
    implements $SearchBuildableStateCopyWith<$Res> {
  factory _$$_SearchBuildableStateCopyWith(_$_SearchBuildableState value,
          $Res Function(_$_SearchBuildableState) then) =
      __$$_SearchBuildableStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool isModal_hud,
      bool success,
      bool failed,
      List<Product>? products,
      int? nextPageKey,
      dynamic error});
}

/// @nodoc
class __$$_SearchBuildableStateCopyWithImpl<$Res>
    extends _$SearchBuildableStateCopyWithImpl<$Res, _$_SearchBuildableState>
    implements _$$_SearchBuildableStateCopyWith<$Res> {
  __$$_SearchBuildableStateCopyWithImpl(_$_SearchBuildableState _value,
      $Res Function(_$_SearchBuildableState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isModal_hud = null,
    Object? success = null,
    Object? failed = null,
    Object? products = freezed,
    Object? nextPageKey = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_SearchBuildableState(
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
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      nextPageKey: freezed == nextPageKey
          ? _value.nextPageKey
          : nextPageKey // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_SearchBuildableState implements _SearchBuildableState {
  const _$_SearchBuildableState(
      {this.loading = false,
      this.isModal_hud = false,
      this.success = false,
      this.failed = false,
      final List<Product>? products = const [],
      this.nextPageKey,
      this.error})
      : _products = products;

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
  final List<Product>? _products;
  @override
  @JsonKey()
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? nextPageKey;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'SearchBuildableState(loading: $loading, isModal_hud: $isModal_hud, success: $success, failed: $failed, products: $products, nextPageKey: $nextPageKey, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchBuildableState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isModal_hud, isModal_hud) ||
                other.isModal_hud == isModal_hud) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.nextPageKey, nextPageKey) ||
                other.nextPageKey == nextPageKey) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      isModal_hud,
      success,
      failed,
      const DeepCollectionEquality().hash(_products),
      nextPageKey,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchBuildableStateCopyWith<_$_SearchBuildableState> get copyWith =>
      __$$_SearchBuildableStateCopyWithImpl<_$_SearchBuildableState>(
          this, _$identity);
}

abstract class _SearchBuildableState implements SearchBuildableState {
  const factory _SearchBuildableState(
      {final bool loading,
      final bool isModal_hud,
      final bool success,
      final bool failed,
      final List<Product>? products,
      final int? nextPageKey,
      final dynamic error}) = _$_SearchBuildableState;

  @override
  bool get loading;
  @override
  bool get isModal_hud;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  List<Product>? get products;
  @override
  int? get nextPageKey;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$_SearchBuildableStateCopyWith<_$_SearchBuildableState> get copyWith =>
      throw _privateConstructorUsedError;
}
