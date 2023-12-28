// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_comments_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyCommentsBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;
  bool get isModalHud => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  List<Comment>? get comments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyCommentsBuildableCopyWith<MyCommentsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCommentsBuildableCopyWith<$Res> {
  factory $MyCommentsBuildableCopyWith(
          MyCommentsBuildable value, $Res Function(MyCommentsBuildable) then) =
      _$MyCommentsBuildableCopyWithImpl<$Res, MyCommentsBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      bool isModalHud,
      dynamic error,
      List<Comment>? comments});
}

/// @nodoc
class _$MyCommentsBuildableCopyWithImpl<$Res, $Val extends MyCommentsBuildable>
    implements $MyCommentsBuildableCopyWith<$Res> {
  _$MyCommentsBuildableCopyWithImpl(this._value, this._then);

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
    Object? isModalHud = null,
    Object? error = freezed,
    Object? comments = freezed,
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
      isModalHud: null == isModalHud
          ? _value.isModalHud
          : isModalHud // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyCommentsBuildableCopyWith<$Res>
    implements $MyCommentsBuildableCopyWith<$Res> {
  factory _$$_MyCommentsBuildableCopyWith(_$_MyCommentsBuildable value,
          $Res Function(_$_MyCommentsBuildable) then) =
      __$$_MyCommentsBuildableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool success,
      bool failed,
      bool isModalHud,
      dynamic error,
      List<Comment>? comments});
}

/// @nodoc
class __$$_MyCommentsBuildableCopyWithImpl<$Res>
    extends _$MyCommentsBuildableCopyWithImpl<$Res, _$_MyCommentsBuildable>
    implements _$$_MyCommentsBuildableCopyWith<$Res> {
  __$$_MyCommentsBuildableCopyWithImpl(_$_MyCommentsBuildable _value,
      $Res Function(_$_MyCommentsBuildable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
    Object? isModalHud = null,
    Object? error = freezed,
    Object? comments = freezed,
  }) {
    return _then(_$_MyCommentsBuildable(
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
      isModalHud: null == isModalHud
          ? _value.isModalHud
          : isModalHud // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ));
  }
}

/// @nodoc

class _$_MyCommentsBuildable implements _MyCommentsBuildable {
  const _$_MyCommentsBuildable(
      {this.loading = false,
      this.success = false,
      this.failed = false,
      this.isModalHud = false,
      this.error,
      final List<Comment>? comments = const []})
      : _comments = comments;

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
  final bool isModalHud;
  @override
  final dynamic error;
  final List<Comment>? _comments;
  @override
  @JsonKey()
  List<Comment>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyCommentsBuildable(loading: $loading, success: $success, failed: $failed, isModalHud: $isModalHud, error: $error, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyCommentsBuildable &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed) &&
            (identical(other.isModalHud, isModalHud) ||
                other.isModalHud == isModalHud) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      success,
      failed,
      isModalHud,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyCommentsBuildableCopyWith<_$_MyCommentsBuildable> get copyWith =>
      __$$_MyCommentsBuildableCopyWithImpl<_$_MyCommentsBuildable>(
          this, _$identity);
}

abstract class _MyCommentsBuildable implements MyCommentsBuildable {
  const factory _MyCommentsBuildable(
      {final bool loading,
      final bool success,
      final bool failed,
      final bool isModalHud,
      final dynamic error,
      final List<Comment>? comments}) = _$_MyCommentsBuildable;

  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  bool get isModalHud;
  @override
  dynamic get error;
  @override
  List<Comment>? get comments;
  @override
  @JsonKey(ignore: true)
  _$$_MyCommentsBuildableCopyWith<_$_MyCommentsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}
