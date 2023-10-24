// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recently_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecentlyProductModel _$RecentlyProductModelFromJson(Map<String, dynamic> json) {
  return _RecentlyProductModel.fromJson(json);
}

/// @nodoc
mixin _$RecentlyProductModel {
  String? get id => throw _privateConstructorUsedError;
  bool? get is_watched => throw _privateConstructorUsedError;
  String? get client_id => throw _privateConstructorUsedError;
  int? get product_id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentlyProductModelCopyWith<RecentlyProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentlyProductModelCopyWith<$Res> {
  factory $RecentlyProductModelCopyWith(RecentlyProductModel value,
          $Res Function(RecentlyProductModel) then) =
      _$RecentlyProductModelCopyWithImpl<$Res, RecentlyProductModel>;
  @useResult
  $Res call(
      {String? id,
      bool? is_watched,
      String? client_id,
      int? product_id,
      DateTime? created_at,
      DateTime? updated_at,
      Product? product});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$RecentlyProductModelCopyWithImpl<$Res,
        $Val extends RecentlyProductModel>
    implements $RecentlyProductModelCopyWith<$Res> {
  _$RecentlyProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? is_watched = freezed,
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
      is_watched: freezed == is_watched
          ? _value.is_watched
          : is_watched // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_RecentlyProductModelCopyWith<$Res>
    implements $RecentlyProductModelCopyWith<$Res> {
  factory _$$_RecentlyProductModelCopyWith(_$_RecentlyProductModel value,
          $Res Function(_$_RecentlyProductModel) then) =
      __$$_RecentlyProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      bool? is_watched,
      String? client_id,
      int? product_id,
      DateTime? created_at,
      DateTime? updated_at,
      Product? product});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_RecentlyProductModelCopyWithImpl<$Res>
    extends _$RecentlyProductModelCopyWithImpl<$Res, _$_RecentlyProductModel>
    implements _$$_RecentlyProductModelCopyWith<$Res> {
  __$$_RecentlyProductModelCopyWithImpl(_$_RecentlyProductModel _value,
      $Res Function(_$_RecentlyProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? is_watched = freezed,
    Object? client_id = freezed,
    Object? product_id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_RecentlyProductModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      is_watched: freezed == is_watched
          ? _value.is_watched
          : is_watched // ignore: cast_nullable_to_non_nullable
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
              as Product?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecentlyProductModel implements _RecentlyProductModel {
  const _$_RecentlyProductModel(
      {this.id,
      this.is_watched,
      this.client_id,
      this.product_id,
      this.created_at,
      this.updated_at,
      this.product});

  factory _$_RecentlyProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecentlyProductModelFromJson(json);

  @override
  final String? id;
  @override
  final bool? is_watched;
  @override
  final String? client_id;
  @override
  final int? product_id;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final Product? product;

  @override
  String toString() {
    return 'RecentlyProductModel(id: $id, is_watched: $is_watched, client_id: $client_id, product_id: $product_id, created_at: $created_at, updated_at: $updated_at, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentlyProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_watched, is_watched) ||
                other.is_watched == is_watched) &&
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
  int get hashCode => Object.hash(runtimeType, id, is_watched, client_id,
      product_id, created_at, updated_at, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecentlyProductModelCopyWith<_$_RecentlyProductModel> get copyWith =>
      __$$_RecentlyProductModelCopyWithImpl<_$_RecentlyProductModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentlyProductModelToJson(
      this,
    );
  }
}

abstract class _RecentlyProductModel implements RecentlyProductModel {
  const factory _RecentlyProductModel(
      {final String? id,
      final bool? is_watched,
      final String? client_id,
      final int? product_id,
      final DateTime? created_at,
      final DateTime? updated_at,
      final Product? product}) = _$_RecentlyProductModel;

  factory _RecentlyProductModel.fromJson(Map<String, dynamic> json) =
      _$_RecentlyProductModel.fromJson;

  @override
  String? get id;
  @override
  bool? get is_watched;
  @override
  String? get client_id;
  @override
  int? get product_id;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  Product? get product;
  @override
  @JsonKey(ignore: true)
  _$$_RecentlyProductModelCopyWith<_$_RecentlyProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
