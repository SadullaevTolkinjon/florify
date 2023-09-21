// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get isModal_hud => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  int get selectedTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteBuildableCopyWith<FavoriteBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteBuildableCopyWith<$Res> {
  factory $FavoriteBuildableCopyWith(
          FavoriteBuildable value, $Res Function(FavoriteBuildable) then) =
      _$FavoriteBuildableCopyWithImpl<$Res, FavoriteBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool isModal_hud,
      bool success,
      bool failed,
      dynamic error,
      int selectedTab});
}

/// @nodoc
class _$FavoriteBuildableCopyWithImpl<$Res, $Val extends FavoriteBuildable>
    implements $FavoriteBuildableCopyWith<$Res> {
  _$FavoriteBuildableCopyWithImpl(this._value, this._then);

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
    Object? selectedTab = null,
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
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteBuildableCopyWith<$Res>
    implements $FavoriteBuildableCopyWith<$Res> {
  factory _$$_FavoriteBuildableCopyWith(_$_FavoriteBuildable value,
          $Res Function(_$_FavoriteBuildable) then) =
      __$$_FavoriteBuildableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool isModal_hud,
      bool success,
      bool failed,
      dynamic error,
      int selectedTab});
}

/// @nodoc
class __$$_FavoriteBuildableCopyWithImpl<$Res>
    extends _$FavoriteBuildableCopyWithImpl<$Res, _$_FavoriteBuildable>
    implements _$$_FavoriteBuildableCopyWith<$Res> {
  __$$_FavoriteBuildableCopyWithImpl(
      _$_FavoriteBuildable _value, $Res Function(_$_FavoriteBuildable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isModal_hud = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? selectedTab = null,
  }) {
    return _then(_$_FavoriteBuildable(
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
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FavoriteBuildable implements _FavoriteBuildable {
  const _$_FavoriteBuildable(
      {this.loading = false,
      this.isModal_hud = false,
      this.success = false,
      this.failed = false,
      this.error,
      this.selectedTab = 0});

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
  @override
  @JsonKey()
  final int selectedTab;

  @override
  String toString() {
    return 'FavoriteBuildable(loading: $loading, isModal_hud: $isModal_hud, success: $success, failed: $failed, error: $error, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteBuildable &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isModal_hud, isModal_hud) ||
                other.isModal_hud == isModal_hud) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, isModal_hud, success,
      failed, const DeepCollectionEquality().hash(error), selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteBuildableCopyWith<_$_FavoriteBuildable> get copyWith =>
      __$$_FavoriteBuildableCopyWithImpl<_$_FavoriteBuildable>(
          this, _$identity);
}

abstract class _FavoriteBuildable implements FavoriteBuildable {
  const factory _FavoriteBuildable(
      {final bool loading,
      final bool isModal_hud,
      final bool success,
      final bool failed,
      final dynamic error,
      final int selectedTab}) = _$_FavoriteBuildable;

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
  int get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteBuildableCopyWith<_$_FavoriteBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}
