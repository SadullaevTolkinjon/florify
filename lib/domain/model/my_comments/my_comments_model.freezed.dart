// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_comments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyCommmentsModel _$MyCommmentsModelFromJson(Map<String, dynamic> json) {
  return _MyCommmentsModel.fromJson(json);
}

/// @nodoc
mixin _$MyCommmentsModel {
  int? get statusCode => throw _privateConstructorUsedError;
  CommentData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyCommmentsModelCopyWith<MyCommmentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCommmentsModelCopyWith<$Res> {
  factory $MyCommmentsModelCopyWith(
          MyCommmentsModel value, $Res Function(MyCommmentsModel) then) =
      _$MyCommmentsModelCopyWithImpl<$Res, MyCommmentsModel>;
  @useResult
  $Res call({int? statusCode, CommentData? data});

  $CommentDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MyCommmentsModelCopyWithImpl<$Res, $Val extends MyCommmentsModel>
    implements $MyCommmentsModelCopyWith<$Res> {
  _$MyCommmentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CommentData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CommentDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MyCommmentsModelCopyWith<$Res>
    implements $MyCommmentsModelCopyWith<$Res> {
  factory _$$_MyCommmentsModelCopyWith(
          _$_MyCommmentsModel value, $Res Function(_$_MyCommmentsModel) then) =
      __$$_MyCommmentsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? statusCode, CommentData? data});

  @override
  $CommentDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_MyCommmentsModelCopyWithImpl<$Res>
    extends _$MyCommmentsModelCopyWithImpl<$Res, _$_MyCommmentsModel>
    implements _$$_MyCommmentsModelCopyWith<$Res> {
  __$$_MyCommmentsModelCopyWithImpl(
      _$_MyCommmentsModel _value, $Res Function(_$_MyCommmentsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_MyCommmentsModel(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CommentData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyCommmentsModel implements _MyCommmentsModel {
  const _$_MyCommmentsModel({this.statusCode, this.data});

  factory _$_MyCommmentsModel.fromJson(Map<String, dynamic> json) =>
      _$$_MyCommmentsModelFromJson(json);

  @override
  final int? statusCode;
  @override
  final CommentData? data;

  @override
  String toString() {
    return 'MyCommmentsModel(statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyCommmentsModel &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyCommmentsModelCopyWith<_$_MyCommmentsModel> get copyWith =>
      __$$_MyCommmentsModelCopyWithImpl<_$_MyCommmentsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyCommmentsModelToJson(
      this,
    );
  }
}

abstract class _MyCommmentsModel implements MyCommmentsModel {
  const factory _MyCommmentsModel(
      {final int? statusCode, final CommentData? data}) = _$_MyCommmentsModel;

  factory _MyCommmentsModel.fromJson(Map<String, dynamic> json) =
      _$_MyCommmentsModel.fromJson;

  @override
  int? get statusCode;
  @override
  CommentData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_MyCommmentsModelCopyWith<_$_MyCommmentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentData _$CommentDataFromJson(Map<String, dynamic> json) {
  return _CommentData.fromJson(json);
}

/// @nodoc
mixin _$CommentData {
  List<Comment>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentDataCopyWith<CommentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDataCopyWith<$Res> {
  factory $CommentDataCopyWith(
          CommentData value, $Res Function(CommentData) then) =
      _$CommentDataCopyWithImpl<$Res, CommentData>;
  @useResult
  $Res call({List<Comment>? comments});
}

/// @nodoc
class _$CommentDataCopyWithImpl<$Res, $Val extends CommentData>
    implements $CommentDataCopyWith<$Res> {
  _$CommentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentDataCopyWith<$Res>
    implements $CommentDataCopyWith<$Res> {
  factory _$$_CommentDataCopyWith(
          _$_CommentData value, $Res Function(_$_CommentData) then) =
      __$$_CommentDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Comment>? comments});
}

/// @nodoc
class __$$_CommentDataCopyWithImpl<$Res>
    extends _$CommentDataCopyWithImpl<$Res, _$_CommentData>
    implements _$$_CommentDataCopyWith<$Res> {
  __$$_CommentDataCopyWithImpl(
      _$_CommentData _value, $Res Function(_$_CommentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_$_CommentData(
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentData implements _CommentData {
  const _$_CommentData({final List<Comment>? comments}) : _comments = comments;

  factory _$_CommentData.fromJson(Map<String, dynamic> json) =>
      _$$_CommentDataFromJson(json);

  final List<Comment>? _comments;
  @override
  List<Comment>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommentData(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentData &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentDataCopyWith<_$_CommentData> get copyWith =>
      __$$_CommentDataCopyWithImpl<_$_CommentData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentDataToJson(
      this,
    );
  }
}

abstract class _CommentData implements CommentData {
  const factory _CommentData({final List<Comment>? comments}) = _$_CommentData;

  factory _CommentData.fromJson(Map<String, dynamic> json) =
      _$_CommentData.fromJson;

  @override
  List<Comment>? get comments;
  @override
  @JsonKey(ignore: true)
  _$$_CommentDataCopyWith<_$_CommentData> get copyWith =>
      throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get client_id => throw _privateConstructorUsedError;
  int? get product_id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {String? id,
      String? text,
      String? client_id,
      int? product_id,
      DateTime? createdAt,
      DateTime? updatedAt,
      Product? product});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? client_id = freezed,
    Object? product_id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? text,
      String? client_id,
      int? product_id,
      DateTime? createdAt,
      DateTime? updatedAt,
      Product? product});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$_Comment>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? client_id = freezed,
    Object? product_id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_Comment(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comment implements _Comment {
  const _$_Comment(
      {this.id,
      this.text,
      this.client_id,
      this.product_id,
      this.createdAt,
      this.updatedAt,
      this.product});

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFromJson(json);

  @override
  final String? id;
  @override
  final String? text;
  @override
  final String? client_id;
  @override
  final int? product_id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Product? product;

  @override
  String toString() {
    return 'Comment(id: $id, text: $text, client_id: $client_id, product_id: $product_id, createdAt: $createdAt, updatedAt: $updatedAt, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.client_id, client_id) ||
                other.client_id == client_id) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, client_id, product_id,
      createdAt, updatedAt, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {final String? id,
      final String? text,
      final String? client_id,
      final int? product_id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final Product? product}) = _$_Comment;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  String? get id;
  @override
  String? get text;
  @override
  String? get client_id;
  @override
  int? get product_id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Product? get product;
  @override
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
