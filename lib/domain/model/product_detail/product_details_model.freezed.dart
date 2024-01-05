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

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsModel {
  int? get statusCode => throw _privateConstructorUsedError;
  ProductDetailsData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsModelCopyWith<$Res> {
  factory $ProductDetailsModelCopyWith(
          ProductDetailsModel value, $Res Function(ProductDetailsModel) then) =
      _$ProductDetailsModelCopyWithImpl<$Res, ProductDetailsModel>;
  @useResult
  $Res call({int? statusCode, ProductDetailsData? data});

  $ProductDetailsDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res, $Val extends ProductDetailsModel>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._value, this._then);

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
              as ProductDetailsData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDetailsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductDetailsDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductDetailsModelCopyWith<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  factory _$$_ProductDetailsModelCopyWith(_$_ProductDetailsModel value,
          $Res Function(_$_ProductDetailsModel) then) =
      __$$_ProductDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? statusCode, ProductDetailsData? data});

  @override
  $ProductDetailsDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ProductDetailsModelCopyWithImpl<$Res>
    extends _$ProductDetailsModelCopyWithImpl<$Res, _$_ProductDetailsModel>
    implements _$$_ProductDetailsModelCopyWith<$Res> {
  __$$_ProductDetailsModelCopyWithImpl(_$_ProductDetailsModel _value,
      $Res Function(_$_ProductDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ProductDetailsModel(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDetailsData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailsModel implements _ProductDetailsModel {
  const _$_ProductDetailsModel({this.statusCode, this.data});

  factory _$_ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsModelFromJson(json);

  @override
  final int? statusCode;
  @override
  final ProductDetailsData? data;

  @override
  String toString() {
    return 'ProductDetailsModel(statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailsModel &&
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
  _$$_ProductDetailsModelCopyWith<_$_ProductDetailsModel> get copyWith =>
      __$$_ProductDetailsModelCopyWithImpl<_$_ProductDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsModelToJson(
      this,
    );
  }
}

abstract class _ProductDetailsModel implements ProductDetailsModel {
  const factory _ProductDetailsModel(
      {final int? statusCode,
      final ProductDetailsData? data}) = _$_ProductDetailsModel;

  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsModel.fromJson;

  @override
  int? get statusCode;
  @override
  ProductDetailsData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsModelCopyWith<_$_ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetailsData _$ProductDetailsDataFromJson(Map<String, dynamic> json) {
  return _ProductDetailsData.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsData {
  DetailsProduct? get product => throw _privateConstructorUsedError;
  String? get share_link => throw _privateConstructorUsedError;
  List<Product>? get similar_products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsDataCopyWith<ProductDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsDataCopyWith<$Res> {
  factory $ProductDetailsDataCopyWith(
          ProductDetailsData value, $Res Function(ProductDetailsData) then) =
      _$ProductDetailsDataCopyWithImpl<$Res, ProductDetailsData>;
  @useResult
  $Res call(
      {DetailsProduct? product,
      String? share_link,
      List<Product>? similar_products});

  $DetailsProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$ProductDetailsDataCopyWithImpl<$Res, $Val extends ProductDetailsData>
    implements $ProductDetailsDataCopyWith<$Res> {
  _$ProductDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? share_link = freezed,
    Object? similar_products = freezed,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as DetailsProduct?,
      share_link: freezed == share_link
          ? _value.share_link
          : share_link // ignore: cast_nullable_to_non_nullable
              as String?,
      similar_products: freezed == similar_products
          ? _value.similar_products
          : similar_products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $DetailsProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductDetailsDataCopyWith<$Res>
    implements $ProductDetailsDataCopyWith<$Res> {
  factory _$$_ProductDetailsDataCopyWith(_$_ProductDetailsData value,
          $Res Function(_$_ProductDetailsData) then) =
      __$$_ProductDetailsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DetailsProduct? product,
      String? share_link,
      List<Product>? similar_products});

  @override
  $DetailsProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_ProductDetailsDataCopyWithImpl<$Res>
    extends _$ProductDetailsDataCopyWithImpl<$Res, _$_ProductDetailsData>
    implements _$$_ProductDetailsDataCopyWith<$Res> {
  __$$_ProductDetailsDataCopyWithImpl(
      _$_ProductDetailsData _value, $Res Function(_$_ProductDetailsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? share_link = freezed,
    Object? similar_products = freezed,
  }) {
    return _then(_$_ProductDetailsData(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as DetailsProduct?,
      share_link: freezed == share_link
          ? _value.share_link
          : share_link // ignore: cast_nullable_to_non_nullable
              as String?,
      similar_products: freezed == similar_products
          ? _value._similar_products
          : similar_products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailsData implements _ProductDetailsData {
  const _$_ProductDetailsData(
      {this.product, this.share_link, final List<Product>? similar_products})
      : _similar_products = similar_products;

  factory _$_ProductDetailsData.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsDataFromJson(json);

  @override
  final DetailsProduct? product;
  @override
  final String? share_link;
  final List<Product>? _similar_products;
  @override
  List<Product>? get similar_products {
    final value = _similar_products;
    if (value == null) return null;
    if (_similar_products is EqualUnmodifiableListView)
      return _similar_products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDetailsData(product: $product, share_link: $share_link, similar_products: $similar_products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailsData &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.share_link, share_link) ||
                other.share_link == share_link) &&
            const DeepCollectionEquality()
                .equals(other._similar_products, _similar_products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, share_link,
      const DeepCollectionEquality().hash(_similar_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailsDataCopyWith<_$_ProductDetailsData> get copyWith =>
      __$$_ProductDetailsDataCopyWithImpl<_$_ProductDetailsData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsDataToJson(
      this,
    );
  }
}

abstract class _ProductDetailsData implements ProductDetailsData {
  const factory _ProductDetailsData(
      {final DetailsProduct? product,
      final String? share_link,
      final List<Product>? similar_products}) = _$_ProductDetailsData;

  factory _ProductDetailsData.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsData.fromJson;

  @override
  DetailsProduct? get product;
  @override
  String? get share_link;
  @override
  List<Product>? get similar_products;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsDataCopyWith<_$_ProductDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailsProduct _$DetailsProductFromJson(Map<String, dynamic> json) {
  return _DetailsProduct.fromJson(json);
}

/// @nodoc
mixin _$DetailsProduct {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  dynamic get color => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get salesman_id => throw _privateConstructorUsedError;
  String? get category_id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Salesman? get salesman => throw _privateConstructorUsedError;
  ProductDetailCategory? get category => throw _privateConstructorUsedError;
  List<ProductImage>? get images => throw _privateConstructorUsedError;
  List<dynamic>? get likes => throw _privateConstructorUsedError;
  List<Comment>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsProductCopyWith<DetailsProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsProductCopyWith<$Res> {
  factory $DetailsProductCopyWith(
          DetailsProduct value, $Res Function(DetailsProduct) then) =
      _$DetailsProductCopyWithImpl<$Res, DetailsProduct>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      int? quantity,
      String? description,
      dynamic color,
      DateTime? date,
      String? salesman_id,
      String? category_id,
      DateTime? createdAt,
      DateTime? updatedAt,
      Salesman? salesman,
      ProductDetailCategory? category,
      List<ProductImage>? images,
      List<dynamic>? likes,
      List<Comment>? comments});

  $SalesmanCopyWith<$Res>? get salesman;
  $ProductDetailCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$DetailsProductCopyWithImpl<$Res, $Val extends DetailsProduct>
    implements $DetailsProductCopyWith<$Res> {
  _$DetailsProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? date = freezed,
    Object? salesman_id = freezed,
    Object? category_id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? salesman = freezed,
    Object? category = freezed,
    Object? images = freezed,
    Object? likes = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
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
abstract class _$$_DetailsProductCopyWith<$Res>
    implements $DetailsProductCopyWith<$Res> {
  factory _$$_DetailsProductCopyWith(
          _$_DetailsProduct value, $Res Function(_$_DetailsProduct) then) =
      __$$_DetailsProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      int? price,
      int? quantity,
      String? description,
      dynamic color,
      DateTime? date,
      String? salesman_id,
      String? category_id,
      DateTime? createdAt,
      DateTime? updatedAt,
      Salesman? salesman,
      ProductDetailCategory? category,
      List<ProductImage>? images,
      List<dynamic>? likes,
      List<Comment>? comments});

  @override
  $SalesmanCopyWith<$Res>? get salesman;
  @override
  $ProductDetailCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_DetailsProductCopyWithImpl<$Res>
    extends _$DetailsProductCopyWithImpl<$Res, _$_DetailsProduct>
    implements _$$_DetailsProductCopyWith<$Res> {
  __$$_DetailsProductCopyWithImpl(
      _$_DetailsProduct _value, $Res Function(_$_DetailsProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? date = freezed,
    Object? salesman_id = freezed,
    Object? category_id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? salesman = freezed,
    Object? category = freezed,
    Object? images = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
  }) {
    return _then(_$_DetailsProduct(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      likes: freezed == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailsProduct implements _DetailsProduct {
  const _$_DetailsProduct(
      {this.id,
      this.name,
      this.price,
      this.quantity,
      this.description,
      this.color,
      this.date,
      this.salesman_id,
      this.category_id,
      this.createdAt,
      this.updatedAt,
      this.salesman,
      this.category,
      final List<ProductImage>? images,
      final List<dynamic>? likes,
      final List<Comment>? comments})
      : _images = images,
        _likes = likes,
        _comments = comments;

  factory _$_DetailsProduct.fromJson(Map<String, dynamic> json) =>
      _$$_DetailsProductFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? price;
  @override
  final int? quantity;
  @override
  final String? description;
  @override
  final dynamic color;
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

  final List<dynamic>? _likes;
  @override
  List<dynamic>? get likes {
    final value = _likes;
    if (value == null) return null;
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'DetailsProduct(id: $id, name: $name, price: $price, quantity: $quantity, description: $description, color: $color, date: $date, salesman_id: $salesman_id, category_id: $category_id, createdAt: $createdAt, updatedAt: $updatedAt, salesman: $salesman, category: $category, images: $images, likes: $likes, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsProduct &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.color, color) &&
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
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      quantity,
      description,
      const DeepCollectionEquality().hash(color),
      date,
      salesman_id,
      category_id,
      createdAt,
      updatedAt,
      salesman,
      category,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsProductCopyWith<_$_DetailsProduct> get copyWith =>
      __$$_DetailsProductCopyWithImpl<_$_DetailsProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailsProductToJson(
      this,
    );
  }
}

abstract class _DetailsProduct implements DetailsProduct {
  const factory _DetailsProduct(
      {final int? id,
      final String? name,
      final int? price,
      final int? quantity,
      final String? description,
      final dynamic color,
      final DateTime? date,
      final String? salesman_id,
      final String? category_id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final Salesman? salesman,
      final ProductDetailCategory? category,
      final List<ProductImage>? images,
      final List<dynamic>? likes,
      final List<Comment>? comments}) = _$_DetailsProduct;

  factory _DetailsProduct.fromJson(Map<String, dynamic> json) =
      _$_DetailsProduct.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get price;
  @override
  int? get quantity;
  @override
  String? get description;
  @override
  dynamic get color;
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
  List<dynamic>? get likes;
  @override
  List<Comment>? get comments;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsProductCopyWith<_$_DetailsProduct> get copyWith =>
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
  dynamic get uz_description => throw _privateConstructorUsedError;
  dynamic get ru_description => throw _privateConstructorUsedError;
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
      dynamic uz_description,
      dynamic ru_description,
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
    Object? uz_description = freezed,
    Object? ru_description = freezed,
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
      uz_description: freezed == uz_description
          ? _value.uz_description
          : uz_description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ru_description: freezed == ru_description
          ? _value.ru_description
          : ru_description // ignore: cast_nullable_to_non_nullable
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
      dynamic uz_description,
      dynamic ru_description,
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
    Object? uz_description = freezed,
    Object? ru_description = freezed,
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
      uz_description: freezed == uz_description
          ? _value.uz_description
          : uz_description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ru_description: freezed == ru_description
          ? _value.ru_description
          : ru_description // ignore: cast_nullable_to_non_nullable
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
      this.uz_description,
      this.ru_description,
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
  final dynamic uz_description;
  @override
  final dynamic ru_description;
  @override
  final String? image;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductDetailCategory(id: $id, uz: $uz, ru: $ru, uz_description: $uz_description, ru_description: $ru_description, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
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
                .equals(other.uz_description, uz_description) &&
            const DeepCollectionEquality()
                .equals(other.ru_description, ru_description) &&
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
      const DeepCollectionEquality().hash(uz_description),
      const DeepCollectionEquality().hash(ru_description),
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
      final dynamic uz_description,
      final dynamic ru_description,
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
  dynamic get uz_description;
  @override
  dynamic get ru_description;
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
