// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashScreenBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashScreenBuildableCopyWith<SplashScreenBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashScreenBuildableCopyWith<$Res> {
  factory $SplashScreenBuildableCopyWith(SplashScreenBuildable value,
          $Res Function(SplashScreenBuildable) then) =
      _$SplashScreenBuildableCopyWithImpl<$Res, SplashScreenBuildable>;
  @useResult
  $Res call({bool loading, bool success, bool failed});
}

/// @nodoc
class _$SplashScreenBuildableCopyWithImpl<$Res,
        $Val extends SplashScreenBuildable>
    implements $SplashScreenBuildableCopyWith<$Res> {
  _$SplashScreenBuildableCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SplashScreenBuildableCopyWith<$Res>
    implements $SplashScreenBuildableCopyWith<$Res> {
  factory _$$_SplashScreenBuildableCopyWith(_$_SplashScreenBuildable value,
          $Res Function(_$_SplashScreenBuildable) then) =
      __$$_SplashScreenBuildableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool success, bool failed});
}

/// @nodoc
class __$$_SplashScreenBuildableCopyWithImpl<$Res>
    extends _$SplashScreenBuildableCopyWithImpl<$Res, _$_SplashScreenBuildable>
    implements _$$_SplashScreenBuildableCopyWith<$Res> {
  __$$_SplashScreenBuildableCopyWithImpl(_$_SplashScreenBuildable _value,
      $Res Function(_$_SplashScreenBuildable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
  }) {
    return _then(_$_SplashScreenBuildable(
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
    ));
  }
}

/// @nodoc

class _$_SplashScreenBuildable implements _SplashScreenBuildable {
  const _$_SplashScreenBuildable(
      {this.loading = false, this.success = false, this.failed = false});

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
  String toString() {
    return 'SplashScreenBuildable(loading: $loading, success: $success, failed: $failed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SplashScreenBuildable &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SplashScreenBuildableCopyWith<_$_SplashScreenBuildable> get copyWith =>
      __$$_SplashScreenBuildableCopyWithImpl<_$_SplashScreenBuildable>(
          this, _$identity);
}

abstract class _SplashScreenBuildable implements SplashScreenBuildable {
  const factory _SplashScreenBuildable(
      {final bool loading,
      final bool success,
      final bool failed}) = _$_SplashScreenBuildable;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  @JsonKey(ignore: true)
  _$$_SplashScreenBuildableCopyWith<_$_SplashScreenBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}
