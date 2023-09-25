// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  int get selectedTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingBuildableCopyWith<OnboardingBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingBuildableCopyWith<$Res> {
  factory $OnboardingBuildableCopyWith(
          OnboardingBuildable value, $Res Function(OnboardingBuildable) then) =
      _$OnboardingBuildableCopyWithImpl<$Res, OnboardingBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      int currentIndex,
      int selectedTab});
}

/// @nodoc
class _$OnboardingBuildableCopyWithImpl<$Res, $Val extends OnboardingBuildable>
    implements $OnboardingBuildableCopyWith<$Res> {
  _$OnboardingBuildableCopyWithImpl(this._value, this._then);

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
    Object? currentIndex = null,
    Object? selectedTab = null,
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
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardingBuildableCopyWith<$Res>
    implements $OnboardingBuildableCopyWith<$Res> {
  factory _$$_OnboardingBuildableCopyWith(_$_OnboardingBuildable value,
          $Res Function(_$_OnboardingBuildable) then) =
      __$$_OnboardingBuildableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      int currentIndex,
      int selectedTab});
}

/// @nodoc
class __$$_OnboardingBuildableCopyWithImpl<$Res>
    extends _$OnboardingBuildableCopyWithImpl<$Res, _$_OnboardingBuildable>
    implements _$$_OnboardingBuildableCopyWith<$Res> {
  __$$_OnboardingBuildableCopyWithImpl(_$_OnboardingBuildable _value,
      $Res Function(_$_OnboardingBuildable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? currentIndex = null,
    Object? selectedTab = null,
  }) {
    return _then(_$_OnboardingBuildable(
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
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnboardingBuildable implements _OnboardingBuildable {
  const _$_OnboardingBuildable(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      this.currentIndex = 0,
      this.selectedTab = 35});

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
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final int selectedTab;

  @override
  String toString() {
    return 'OnboardingBuildable(loading: $loading, success: $success, failed: $failed, currentIndex: $currentIndex, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingBuildable &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loading, success, failed, currentIndex, selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingBuildableCopyWith<_$_OnboardingBuildable> get copyWith =>
      __$$_OnboardingBuildableCopyWithImpl<_$_OnboardingBuildable>(
          this, _$identity);
}

abstract class _OnboardingBuildable implements OnboardingBuildable {
  const factory _OnboardingBuildable(
      {final bool loading,
      final bool success,
      final bool failed,
      final int currentIndex,
      final int selectedTab}) = _$_OnboardingBuildable;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  int get currentIndex;
  @override
  int get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingBuildableCopyWith<_$_OnboardingBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}
