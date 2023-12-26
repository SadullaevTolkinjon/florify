// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) {
  return _FavoriteModel.fromJson(json);
}

/// @nodoc
mixin _$FavoriteModel {
  String? get id => throw _privateConstructorUsedError;
  bool? get is_like => throw _privateConstructorUsedError;
  String? get client_id => throw _privateConstructorUsedError;
  int? get product_id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  FavoriteProduct? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteModelCopyWith<FavoriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteModelCopyWith<$Res> {
  factory $FavoriteModelCopyWith(
          FavoriteModel value, $Res Function(FavoriteModel) then) =
      _$FavoriteModelCopyWithImpl<$Res, FavoriteModel>;
  @useResult
  $Res call(
      {String? id,
      bool? is_like,
      String? client_id,
      int? product_id,
      DateTime? created_at,
      DateTime? updated_at,
      FavoriteProduct? product});

  $FavoriteProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$FavoriteModelCopyWithImpl<$Res, $Val extends FavoriteModel>
    implements $FavoriteModelCopyWith<$Res> {
  _$FavoriteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? is_like = freezed,
    Object? client_id = freezed,
    Object? product_id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      is_like: freezed == is_like
          ? _value.is_like
          : is_like // ignore: cast_nullable_to_non_nullable
              as bool?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as FavoriteProduct?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FavoriteProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $FavoriteProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FavoriteModelCopyWith<$Res>
    implements $FavoriteModelCopyWith<$Res> {
  factory _$$_FavoriteModelCopyWith(
          _$_FavoriteModel value, $Res Function(_$_FavoriteModel) then) =
      __$$_FavoriteModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      bool? is_like,
      String? client_id,
      int? product_id,
      DateTime? created_at,
      DateTime? updated_at,
      FavoriteProduct? product});

  @override
  $FavoriteProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_FavoriteModelCopyWithImpl<$Res>
    extends _$FavoriteModelCopyWithImpl<$Res, _$_FavoriteModel>
    implements _$$_FavoriteModelCopyWith<$Res> {
  __$$_FavoriteModelCopyWithImpl(
      _$_FavoriteModel _value, $Res Function(_$_FavoriteModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? is_like = freezed,
    Object? client_id = freezed,
    Object? product_id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_FavoriteModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      is_like: freezed == is_like
          ? _value.is_like
          : is_like // ignore: cast_nullable_to_non_nullable
              as bool?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as FavoriteProduct?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteModel implements _FavoriteModel {
  const _$_FavoriteModel(
      {this.id,
      this.is_like,
      this.client_id,
      this.product_id,
      this.created_at,
      this.updated_at,
      this.product});

  factory _$_FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteModelFromJson(json);

  @override
  final String? id;
  @override
  final bool? is_like;
  @override
  final String? client_id;
  @override
  final int? product_id;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final FavoriteProduct? product;

  @override
  String toString() {
    return 'FavoriteModel(id: $id, is_like: $is_like, client_id: $client_id, product_id: $product_id, created_at: $created_at, updated_at: $updated_at, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_like, is_like) || other.is_like == is_like) &&
            (identical(other.client_id, client_id) ||
                other.client_id == client_id) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, is_like, client_id,
      product_id, created_at, updated_at, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteModelCopyWith<_$_FavoriteModel> get copyWith =>
      __$$_FavoriteModelCopyWithImpl<_$_FavoriteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteModelToJson(
      this,
    );
  }
}

abstract class _FavoriteModel implements FavoriteModel {
  const factory _FavoriteModel(
      {final String? id,
      final bool? is_like,
      final String? client_id,
      final int? product_id,
      final DateTime? created_at,
      final DateTime? updated_at,
      final FavoriteProduct? product}) = _$_FavoriteModel;

  factory _FavoriteModel.fromJson(Map<String, dynamic> json) =
      _$_FavoriteModel.fromJson;

  @override
  String? get id;
  @override
  bool? get is_like;
  @override
  String? get client_id;
  @override
  int? get product_id;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  FavoriteProduct? get product;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteModelCopyWith<_$_FavoriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

FavoriteProduct _$FavoriteProductFromJson(Map<String, dynamic> json) {
  return _FavoriteProduct.fromJson(json);
}

/// @nodoc
mixin _$FavoriteProduct {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get salesman_id => throw _privateConstructorUsedError;
  String? get category_id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  List<ProductImage>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteProductCopyWith<FavoriteProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteProductCopyWith<$Res> {
  factory $FavoriteProductCopyWith(
          FavoriteProduct value, $Res Function(FavoriteProduct) then) =
      _$FavoriteProductCopyWithImpl<$Res, FavoriteProduct>;
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
      DateTime? created_at,
      DateTime? updated_at,
      List<ProductImage>? images});
}

/// @nodoc
class _$FavoriteProductCopyWithImpl<$Res, $Val extends FavoriteProduct>
    implements $FavoriteProductCopyWith<$Res> {
  _$FavoriteProductCopyWithImpl(this._value, this._then);

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
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? images = freezed,
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
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteProductCopyWith<$Res>
    implements $FavoriteProductCopyWith<$Res> {
  factory _$$_FavoriteProductCopyWith(
          _$_FavoriteProduct value, $Res Function(_$_FavoriteProduct) then) =
      __$$_FavoriteProductCopyWithImpl<$Res>;
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
      DateTime? created_at,
      DateTime? updated_at,
      List<ProductImage>? images});
}

/// @nodoc
class __$$_FavoriteProductCopyWithImpl<$Res>
    extends _$FavoriteProductCopyWithImpl<$Res, _$_FavoriteProduct>
    implements _$$_FavoriteProductCopyWith<$Res> {
  __$$_FavoriteProductCopyWithImpl(
      _$_FavoriteProduct _value, $Res Function(_$_FavoriteProduct) _then)
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
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_FavoriteProduct(
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
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteProduct implements _FavoriteProduct {
  const _$_FavoriteProduct(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.quantity,
      this.color,
      this.date,
      this.salesman_id,
      this.category_id,
      this.created_at,
      this.updated_at,
      final List<ProductImage>? images})
      : _images = images;

  factory _$_FavoriteProduct.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteProductFromJson(json);

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
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  final List<ProductImage>? _images;
  @override
  List<ProductImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavoriteProduct(id: $id, name: $name, description: $description, price: $price, quantity: $quantity, color: $color, date: $date, salesman_id: $salesman_id, category_id: $category_id, created_at: $created_at, updated_at: $updated_at, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteProduct &&
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
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            const DeepCollectionEquality().equals(other._images, _images));
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
      created_at,
      updated_at,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteProductCopyWith<_$_FavoriteProduct> get copyWith =>
      __$$_FavoriteProductCopyWithImpl<_$_FavoriteProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteProductToJson(
      this,
    );
  }
}

abstract class _FavoriteProduct implements FavoriteProduct {
  const factory _FavoriteProduct(
      {final int? id,
      final String? name,
      final String? description,
      final int? price,
      final int? quantity,
      final String? color,
      final DateTime? date,
      final String? salesman_id,
      final String? category_id,
      final DateTime? created_at,
      final DateTime? updated_at,
      final List<ProductImage>? images}) = _$_FavoriteProduct;

  factory _FavoriteProduct.fromJson(Map<String, dynamic> json) =
      _$_FavoriteProduct.fromJson;

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
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  List<ProductImage>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteProductCopyWith<_$_FavoriteProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
