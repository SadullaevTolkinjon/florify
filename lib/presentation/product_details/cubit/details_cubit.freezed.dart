// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailsBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get isModal_hud => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  bool get isUser => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  int get selectedTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsBuildableCopyWith<DetailsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsBuildableCopyWith<$Res> {
  factory $DetailsBuildableCopyWith(
          DetailsBuildable value, $Res Function(DetailsBuildable) then) =
      _$DetailsBuildableCopyWithImpl<$Res, DetailsBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool isModal_hud,
      bool success,
      bool failed,
      dynamic error,
      bool isUser,
      int currentIndex,
      int selectedTab});
}

/// @nodoc
class _$DetailsBuildableCopyWithImpl<$Res, $Val extends DetailsBuildable>
    implements $DetailsBuildableCopyWith<$Res> {
  _$DetailsBuildableCopyWithImpl(this._value, this._then);

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
    Object? isUser = null,
    Object? currentIndex = null,
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
      isUser: null == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DetailsBuildableCopyWith<$Res>
    implements $DetailsBuildableCopyWith<$Res> {
  factory _$$_DetailsBuildableCopyWith(
          _$_DetailsBuildable value, $Res Function(_$_DetailsBuildable) then) =
      __$$_DetailsBuildableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool isModal_hud,
      bool success,
      bool failed,
      dynamic error,
      bool isUser,
      int currentIndex,
      int selectedTab});
}

/// @nodoc
class __$$_DetailsBuildableCopyWithImpl<$Res>
    extends _$DetailsBuildableCopyWithImpl<$Res, _$_DetailsBuildable>
    implements _$$_DetailsBuildableCopyWith<$Res> {
  __$$_DetailsBuildableCopyWithImpl(
      _$_DetailsBuildable _value, $Res Function(_$_DetailsBuildable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isModal_hud = null,
    Object? success = null,
    Object? failed = null,
    Object? error = freezed,
    Object? isUser = null,
    Object? currentIndex = null,
    Object? selectedTab = null,
  }) {
    return _then(_$_DetailsBuildable(
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
      isUser: null == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
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

class _$_DetailsBuildable implements _DetailsBuildable {
  const _$_DetailsBuildable(
      {this.loading = false,
      this.isModal_hud = false,
      this.success = false,
      this.failed = false,
      this.error,
      this.isUser = false,
      this.currentIndex = 0,
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
  final bool isUser;
  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final int selectedTab;

  @override
  String toString() {
    return 'DetailsBuildable(loading: $loading, isModal_hud: $isModal_hud, success: $success, failed: $failed, error: $error, isUser: $isUser, currentIndex: $currentIndex, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsBuildable &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isModal_hud, isModal_hud) ||
                other.isModal_hud == isModal_hud) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.isUser, isUser) || other.isUser == isUser) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      isModal_hud,
      success,
      failed,
      const DeepCollectionEquality().hash(error),
      isUser,
      currentIndex,
      selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsBuildableCopyWith<_$_DetailsBuildable> get copyWith =>
      __$$_DetailsBuildableCopyWithImpl<_$_DetailsBuildable>(this, _$identity);
}

abstract class _DetailsBuildable implements DetailsBuildable {
  const factory _DetailsBuildable(
      {final bool loading,
      final bool isModal_hud,
      final bool success,
      final bool failed,
      final dynamic error,
      final bool isUser,
      final int currentIndex,
      final int selectedTab}) = _$_DetailsBuildable;

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
  bool get isUser;
  @override
  int get currentIndex;
  @override
  int get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsBuildableCopyWith<_$_DetailsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}
