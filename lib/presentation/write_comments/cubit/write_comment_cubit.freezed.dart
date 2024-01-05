// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'write_comment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WriteCommentsBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WriteCommentsBuildableCopyWith<WriteCommentsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteCommentsBuildableCopyWith<$Res> {
  factory $WriteCommentsBuildableCopyWith(WriteCommentsBuildable value,
          $Res Function(WriteCommentsBuildable) then) =
      _$WriteCommentsBuildableCopyWithImpl<$Res, WriteCommentsBuildable>;
  @useResult
  $Res call(
      {bool loading, bool success, bool failed, dynamic error, double rating});
}

/// @nodoc
class _$WriteCommentsBuildableCopyWithImpl<$Res,
        $Val extends WriteCommentsBuildable>
    implements $WriteCommentsBuildableCopyWith<$Res> {
  _$WriteCommentsBuildableCopyWithImpl(this._value, this._then);

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
    Object? rating = null,
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
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WriteCommentsBuildableCopyWith<$Res>
    implements $WriteCommentsBuildableCopyWith<$Res> {
  factory _$$_WriteCommentsBuildableCopyWith(_$_WriteCommentsBuildable value,
          $Res Function(_$_WriteCommentsBuildable) then) =
      __$$_WriteCommentsBuildableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading, bool success, bool failed, dynamic error, double rating});
}

/// @nodoc
class __$$_WriteCommentsBuildableCopyWithImpl<$Res>
    extends _$WriteCommentsBuildableCopyWithImpl<$Res,
        _$_WriteCommentsBuildable>
    implements _$$_WriteCommentsBuildableCopyWith<$Res> {
  __$$_WriteCommentsBuildableCopyWithImpl(_$_WriteCommentsBuildable _value,
      $Res Function(_$_WriteCommentsBuildable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? rating = null,
  }) {
    return _then(_$_WriteCommentsBuildable(
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
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_WriteCommentsBuildable implements _WriteCommentsBuildable {
  const _$_WriteCommentsBuildable(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      this.error,
      this.rating = 3.0});

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
  @JsonKey()
  final double rating;

  @override
  String toString() {
    return 'WriteCommentsBuildable(loading: $loading, success: $success, failed: $failed, error: $error, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WriteCommentsBuildable &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failed,
      const DeepCollectionEquality().hash(error), rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WriteCommentsBuildableCopyWith<_$_WriteCommentsBuildable> get copyWith =>
      __$$_WriteCommentsBuildableCopyWithImpl<_$_WriteCommentsBuildable>(
          this, _$identity);
}

abstract class _WriteCommentsBuildable implements WriteCommentsBuildable {
  const factory _WriteCommentsBuildable(
      {final bool loading,
      final bool success,
      final bool failed,
      final dynamic error,
      final double rating}) = _$_WriteCommentsBuildable;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  dynamic get error;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_WriteCommentsBuildableCopyWith<_$_WriteCommentsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}
