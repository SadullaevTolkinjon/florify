// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteModel _$$_FavoriteModelFromJson(Map<String, dynamic> json) =>
    _$_FavoriteModel(
      id: json['id'] as String?,
      is_like: json['is_like'] as bool?,
      client_id: json['client_id'] as String?,
      product_id: json['product_id'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      product: json['product'] == null
          ? null
          : FavoriteProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FavoriteModelToJson(_$_FavoriteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_like': instance.is_like,
      'client_id': instance.client_id,
      'product_id': instance.product_id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'product': instance.product,
    };

_$_FavoriteProduct _$$_FavoriteProductFromJson(Map<String, dynamic> json) =>
    _$_FavoriteProduct(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      color: json['color'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      salesman_id: json['salesman_id'] as String?,
      category_id: json['category_id'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FavoriteProductToJson(_$_FavoriteProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'quantity': instance.quantity,
      'color': instance.color,
      'date': instance.date?.toIso8601String(),
      'salesman_id': instance.salesman_id,
      'category_id': instance.category_id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'image': instance.image,
    };
