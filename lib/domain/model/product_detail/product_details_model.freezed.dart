// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailModel _$ProductDetailModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get salesman_id => throw _privateConstructorUsedError;
  String? get category_id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Salesman? get salesman => throw _privateConstructorUsedError;
  ProductDetailCategory? get category => throw _privateConstructorUsedError;
  List<ProductImage>? get images => throw _privateConstructorUsedError;
  List<dynamic>? get like => throw _privateConstructorUsedError;
  List<dynamic>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailModelCopyWith<ProductDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailModelCopyWith<$Res> {
  factory $ProductDetailModelCopyWith(
          ProductDetailModel value, $Res Function(ProductDetailModel) then) =
      _$ProductDetailModelCopyWithImpl<$Res, ProductDetailModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? price,
      int? quantity,
      String? color,
      DateTime? date,
      String? salesman_id,
      String? category_id,
      DateTime? createdAt,
      DateTime? updatedAt,
      Salesman? salesman,
      ProductDetailCategory? category,
      List<ProductImage>? images,
      List<dynamic>? like,
      List<dynamic>? comments});

  $SalesmanCopyWith<$Res>? get salesman;
  $ProductDetailCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductDetailModelCopyWithImpl<$Res, $Val extends ProductDetailModel>
    implements $ProductDetailModelCopyWith<$Res> {
  _$ProductDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? color = freezed,
    Object? date = freezed,
    Object? salesman_id = freezed,
    Object? category_id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? salesman = freezed,
    Object? category = freezed,
    Object? images = freezed,
    Object? like = freezed,
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salesman_id: freezed == salesman_id
          ? _value.salesman_id
          : salesman_id // ignore: cast_nullable_to_non_nullable
              as String?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salesman: freezed == salesman
          ? _value.salesman
          : salesman // ignore: cast_nullable_to_non_nullable
              as Salesman?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductDetailCategory?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SalesmanCopyWith<$Res>? get salesman {
    if (_value.salesman == null) {
      return null;
    }

    return $SalesmanCopyWith<$Res>(_value.salesman!, (value) {
      return _then(_value.copyWith(salesman: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDetailCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $ProductDetailCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductDetailModelCopyWith<$Res>
    implements $ProductDetailModelCopyWith<$Res> {
  factory _$$_ProductDetailModelCopyWith(_$_ProductDetailModel value,
          $Res Function(_$_ProductDetailModel) then) =
      __$$_ProductDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? price,
      int? quantity,
      String? color,
      DateTime? date,
      String? salesman_id,
      String? category_id,
      DateTime? createdAt,
      DateTime? updatedAt,
      Salesman? salesman,
      ProductDetailCategory? category,
      List<ProductImage>? images,
      List<dynamic>? like,
      List<dynamic>? comments});

  @override
  $SalesmanCopyWith<$Res>? get salesman;
  @override
  $ProductDetailCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_ProductDetailModelCopyWithImpl<$Res>
    extends _$ProductDetailModelCopyWithImpl<$Res, _$_ProductDetailModel>
    implements _$$_ProductDetailModelCopyWith<$Res> {
  __$$_ProductDetailModelCopyWithImpl(
      _$_ProductDetailModel _value, $Res Function(_$_ProductDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? color = freezed,
    Object? date = freezed,
    Object? salesman_id = freezed,
    Object? category_id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? salesman = freezed,
    Object? category = freezed,
    Object? images = freezed,
    Object? like = freezed,
    Object? comments = freezed,
  }) {
    return _then(_$_ProductDetailModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salesman_id: freezed == salesman_id
          ? _value.salesman_id
          : salesman_id // ignore: cast_nullable_to_non_nullable
              as String?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salesman: freezed == salesman
          ? _value.salesman
          : salesman // ignore: cast_nullable_to_non_nullable
              as Salesman?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductDetailCategory?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>?,
      like: freezed == like
          ? _value._like
          : like // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailModel implements _ProductDetailModel {
  const _$_ProductDetailModel(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.quantity,
      this.color,
      this.date,
      this.salesman_id,
      this.category_id,
      this.createdAt,
      this.updatedAt,
      this.salesman,
      this.category,
      final List<ProductImage>? images,
      final List<dynamic>? like,
      final List<dynamic>? comments})
      : _images = images,
        _like = like,
        _comments = comments;

  factory _$_ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? price;
  @override
  final int? quantity;
  @override
  final String? color;
  @override
  final DateTime? date;
  @override
  final String? salesman_id;
  @override
  final String? category_id;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Salesman? salesman;
  @override
  final ProductDetailCategory? category;
  final List<ProductImage>? _images;
  @override
  List<ProductImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _like;
  @override
  List<dynamic>? get like {
    final value = _like;
    if (value == null) return null;
    if (_like is EqualUnmodifiableListView) return _like;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _comments;
  @override
  List<dynamic>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDetailModel(id: $id, name: $name, description: $description, price: $price, quantity: $quantity, color: $color, date: $date, salesman_id: $salesman_id, category_id: $category_id, createdAt: $createdAt, updatedAt: $updatedAt, salesman: $salesman, category: $category, images: $images, like: $like, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.salesman_id, salesman_id) ||
                other.salesman_id == salesman_id) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.salesman, salesman) ||
                other.salesman == salesman) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._like, _like) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      price,
      quantity,
      color,
      date,
      salesman_id,
      category_id,
      createdAt,
      updatedAt,
      salesman,
      category,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_like),
      const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailModelCopyWith<_$_ProductDetailModel> get copyWith =>
      __$$_ProductDetailModelCopyWithImpl<_$_ProductDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailModelToJson(
      this,
    );
  }
}

abstract class _ProductDetailModel implements ProductDetailModel {
  const factory _ProductDetailModel(
      {final int? id,
      final String? name,
      final String? description,
      final int? price,
      final int? quantity,
      final String? color,
      final DateTime? date,
      final String? salesman_id,
      final String? category_id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final Salesman? salesman,
      final ProductDetailCategory? category,
      final List<ProductImage>? images,
      final List<dynamic>? like,
      final List<dynamic>? comments}) = _$_ProductDetailModel;

  factory _ProductDetailModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get price;
  @override
  int? get quantity;
  @override
  String? get color;
  @override
  DateTime? get date;
  @override
  String? get salesman_id;
  @override
  String? get category_id;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Salesman? get salesman;
  @override
  ProductDetailCategory? get category;
  @override
  List<ProductImage>? get images;
  @override
  List<dynamic>? get like;
  @override
  List<dynamic>? get comments;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailModelCopyWith<_$_ProductDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Salesman _$SalesmanFromJson(Map<String, dynamic> json) {
  return _Salesman.fromJson(json);
}

/// @nodoc
mixin _$Salesman {
  String? get id => throw _privateConstructorUsedError;
  dynamic get username => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  dynamic get telegram => throw _privateConstructorUsedError;
  String? get hashed_password => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  String? get hashed_refresh_token => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesmanCopyWith<Salesman> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesmanCopyWith<$Res> {
  factory $SalesmanCopyWith(Salesman value, $Res Function(Salesman) then) =
      _$SalesmanCopyWithImpl<$Res, Salesman>;
  @useResult
  $Res call(
      {String? id,
      dynamic username,
      String? phone,
      dynamic telegram,
      String? hashed_password,
      dynamic image,
      String? hashed_refresh_token,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<Product>? products});
}

/// @nodoc
class _$SalesmanCopyWithImpl<$Res, $Val extends Salesman>
    implements $SalesmanCopyWith<$Res> {
  _$SalesmanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? phone = freezed,
    Object? telegram = freezed,
    Object? hashed_password = freezed,
    Object? image = freezed,
    Object? hashed_refresh_token = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      telegram: freezed == telegram
          ? _value.telegram
          : telegram // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hashed_password: freezed == hashed_password
          ? _value.hashed_password
          : hashed_password // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hashed_refresh_token: freezed == hashed_refresh_token
          ? _value.hashed_refresh_token
          : hashed_refresh_token // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesmanCopyWith<$Res> implements $SalesmanCopyWith<$Res> {
  factory _$$_SalesmanCopyWith(
          _$_Salesman value, $Res Function(_$_Salesman) then) =
      __$$_SalesmanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      dynamic username,
      String? phone,
      dynamic telegram,
      String? hashed_password,
      dynamic image,
      String? hashed_refresh_token,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<Product>? products});
}

/// @nodoc
class __$$_SalesmanCopyWithImpl<$Res>
    extends _$SalesmanCopyWithImpl<$Res, _$_Salesman>
    implements _$$_SalesmanCopyWith<$Res> {
  __$$_SalesmanCopyWithImpl(
      _$_Salesman _value, $Res Function(_$_Salesman) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? phone = freezed,
    Object? telegram = freezed,
    Object? hashed_password = freezed,
    Object? image = freezed,
    Object? hashed_refresh_token = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? products = freezed,
  }) {
    return _then(_$_Salesman(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      telegram: freezed == telegram
          ? _value.telegram
          : telegram // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hashed_password: freezed == hashed_password
          ? _value.hashed_password
          : hashed_password // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hashed_refresh_token: freezed == hashed_refresh_token
          ? _value.hashed_refresh_token
          : hashed_refresh_token // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Salesman implements _Salesman {
  const _$_Salesman(
      {this.id,
      this.username,
      this.phone,
      this.telegram,
      this.hashed_password,
      this.image,
      this.hashed_refresh_token,
      this.createdAt,
      this.updatedAt,
      final List<Product>? products})
      : _products = products;

  factory _$_Salesman.fromJson(Map<String, dynamic> json) =>
      _$$_SalesmanFromJson(json);

  @override
  final String? id;
  @override
  final dynamic username;
  @override
  final String? phone;
  @override
  final dynamic telegram;
  @override
  final String? hashed_password;
  @override
  final dynamic image;
  @override
  final String? hashed_refresh_token;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Salesman(id: $id, username: $username, phone: $phone, telegram: $telegram, hashed_password: $hashed_password, image: $image, hashed_refresh_token: $hashed_refresh_token, createdAt: $createdAt, updatedAt: $updatedAt, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Salesman &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other.telegram, telegram) &&
            (identical(other.hashed_password, hashed_password) ||
                other.hashed_password == hashed_password) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.hashed_refresh_token, hashed_refresh_token) ||
                other.hashed_refresh_token == hashed_refresh_token) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(username),
      phone,
      const DeepCollectionEquality().hash(telegram),
      hashed_password,
      const DeepCollectionEquality().hash(image),
      hashed_refresh_token,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesmanCopyWith<_$_Salesman> get copyWith =>
      __$$_SalesmanCopyWithImpl<_$_Salesman>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesmanToJson(
      this,
    );
  }
}

abstract class _Salesman implements Salesman {
  const factory _Salesman(
      {final String? id,
      final dynamic username,
      final String? phone,
      final dynamic telegram,
      final String? hashed_password,
      final dynamic image,
      final String? hashed_refresh_token,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final List<Product>? products}) = _$_Salesman;

  factory _Salesman.fromJson(Map<String, dynamic> json) = _$_Salesman.fromJson;

  @override
  String? get id;
  @override
  dynamic get username;
  @override
  String? get phone;
  @override
  dynamic get telegram;
  @override
  String? get hashed_password;
  @override
  dynamic get image;
  @override
  String? get hashed_refresh_token;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$_SalesmanCopyWith<_$_Salesman> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetailCategory _$ProductDetailCategoryFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailCategory {
  String? get id => throw _privateConstructorUsedError;
  String? get uz => throw _privateConstructorUsedError;
  String? get ru => throw _privateConstructorUsedError;
  dynamic get uzDescription => throw _privateConstructorUsedError;
  dynamic get ruDescription => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailCategoryCopyWith<ProductDetailCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailCategoryCopyWith<$Res> {
  factory $ProductDetailCategoryCopyWith(ProductDetailCategory value,
          $Res Function(ProductDetailCategory) then) =
      _$ProductDetailCategoryCopyWithImpl<$Res, ProductDetailCategory>;
  @useResult
  $Res call(
      {String? id,
      String? uz,
      String? ru,
      dynamic uzDescription,
      dynamic ruDescription,
      String? image,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$ProductDetailCategoryCopyWithImpl<$Res,
        $Val extends ProductDetailCategory>
    implements $ProductDetailCategoryCopyWith<$Res> {
  _$ProductDetailCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uz = freezed,
    Object? ru = freezed,
    Object? uzDescription = freezed,
    Object? ruDescription = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uz: freezed == uz
          ? _value.uz
          : uz // ignore: cast_nullable_to_non_nullable
              as String?,
      ru: freezed == ru
          ? _value.ru
          : ru // ignore: cast_nullable_to_non_nullable
              as String?,
      uzDescription: freezed == uzDescription
          ? _value.uzDescription
          : uzDescription // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ruDescription: freezed == ruDescription
          ? _value.ruDescription
          : ruDescription // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailCategoryCopyWith<$Res>
    implements $ProductDetailCategoryCopyWith<$Res> {
  factory _$$_ProductDetailCategoryCopyWith(_$_ProductDetailCategory value,
          $Res Function(_$_ProductDetailCategory) then) =
      __$$_ProductDetailCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? uz,
      String? ru,
      dynamic uzDescription,
      dynamic ruDescription,
      String? image,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_ProductDetailCategoryCopyWithImpl<$Res>
    extends _$ProductDetailCategoryCopyWithImpl<$Res, _$_ProductDetailCategory>
    implements _$$_ProductDetailCategoryCopyWith<$Res> {
  __$$_ProductDetailCategoryCopyWithImpl(_$_ProductDetailCategory _value,
      $Res Function(_$_ProductDetailCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uz = freezed,
    Object? ru = freezed,
    Object? uzDescription = freezed,
    Object? ruDescription = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ProductDetailCategory(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uz: freezed == uz
          ? _value.uz
          : uz // ignore: cast_nullable_to_non_nullable
              as String?,
      ru: freezed == ru
          ? _value.ru
          : ru // ignore: cast_nullable_to_non_nullable
              as String?,
      uzDescription: freezed == uzDescription
          ? _value.uzDescription
          : uzDescription // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ruDescription: freezed == ruDescription
          ? _value.ruDescription
          : ruDescription // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailCategory implements _ProductDetailCategory {
  const _$_ProductDetailCategory(
      {this.id,
      this.uz,
      this.ru,
      this.uzDescription,
      this.ruDescription,
      this.image,
      this.createdAt,
      this.updatedAt});

  factory _$_ProductDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailCategoryFromJson(json);

  @override
  final String? id;
  @override
  final String? uz;
  @override
  final String? ru;
  @override
  final dynamic uzDescription;
  @override
  final dynamic ruDescription;
  @override
  final String? image;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductDetailCategory(id: $id, uz: $uz, ru: $ru, uzDescription: $uzDescription, ruDescription: $ruDescription, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uz, uz) || other.uz == uz) &&
            (identical(other.ru, ru) || other.ru == ru) &&
            const DeepCollectionEquality()
                .equals(other.uzDescription, uzDescription) &&
            const DeepCollectionEquality()
                .equals(other.ruDescription, ruDescription) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      uz,
      ru,
      const DeepCollectionEquality().hash(uzDescription),
      const DeepCollectionEquality().hash(ruDescription),
      image,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailCategoryCopyWith<_$_ProductDetailCategory> get copyWith =>
      __$$_ProductDetailCategoryCopyWithImpl<_$_ProductDetailCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailCategoryToJson(
      this,
    );
  }
}

abstract class _ProductDetailCategory implements ProductDetailCategory {
  const factory _ProductDetailCategory(
      {final String? id,
      final String? uz,
      final String? ru,
      final dynamic uzDescription,
      final dynamic ruDescription,
      final String? image,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_ProductDetailCategory;

  factory _ProductDetailCategory.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailCategory.fromJson;

  @override
  String? get id;
  @override
  String? get uz;
  @override
  String? get ru;
  @override
  dynamic get uzDescription;
  @override
  dynamic get ruDescription;
  @override
  String? get image;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailCategoryCopyWith<_$_ProductDetailCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
