// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LanguageBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  int get selectedLang => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageBuildableCopyWith<LanguageBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageBuildableCopyWith<$Res> {
  factory $LanguageBuildableCopyWith(
          LanguageBuildable value, $Res Function(LanguageBuildable) then) =
      _$LanguageBuildableCopyWithImpl<$Res, LanguageBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      dynamic error,
      int selectedLang});
}

/// @nodoc
class _$LanguageBuildableCopyWithImpl<$Res, $Val extends LanguageBuildable>
    implements $LanguageBuildableCopyWith<$Res> {
  _$LanguageBuildableCopyWithImpl(this._value, this._then);

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
    Object? selectedLang = null,
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
      selectedLang: null == selectedLang
          ? _value.selectedLang
          : selectedLang // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageBuildableCopyWith<$Res>
    implements $LanguageBuildableCopyWith<$Res> {
  factory _$$_LanguageBuildableCopyWith(_$_LanguageBuildable value,
          $Res Function(_$_LanguageBuildable) then) =
      __$$_LanguageBuildableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      dynamic error,
      int selectedLang});
}

/// @nodoc
class __$$_LanguageBuildableCopyWithImpl<$Res>
    extends _$LanguageBuildableCopyWithImpl<$Res, _$_LanguageBuildable>
    implements _$$_LanguageBuildableCopyWith<$Res> {
  __$$_LanguageBuildableCopyWithImpl(
      _$_LanguageBuildable _value, $Res Function(_$_LanguageBuildable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? selectedLang = null,
  }) {
    return _then(_$_LanguageBuildable(
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
      selectedLang: null == selectedLang
          ? _value.selectedLang
          : selectedLang // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LanguageBuildable implements _LanguageBuildable {
  const _$_LanguageBuildable(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      this.error,
      this.selectedLang = 0});

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
  final int selectedLang;

  @override
  String toString() {
    return 'LanguageBuildable(loading: $loading, success: $success, failed: $failed, error: $error, selectedLang: $selectedLang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageBuildable &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.selectedLang, selectedLang) ||
                other.selectedLang == selectedLang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failed,
      const DeepCollectionEquality().hash(error), selectedLang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageBuildableCopyWith<_$_LanguageBuildable> get copyWith =>
      __$$_LanguageBuildableCopyWithImpl<_$_LanguageBuildable>(
          this, _$identity);
}

abstract class _LanguageBuildable implements LanguageBuildable {
  const factory _LanguageBuildable(
      {final bool loading,
      final bool success,
      final bool failed,
      final dynamic error,
      final int selectedLang}) = _$_LanguageBuildable;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  dynamic get error;
  @override
  int get selectedLang;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageBuildableCopyWith<_$_LanguageBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}
