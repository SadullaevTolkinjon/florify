// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      id: json['id'] as String?,
      uz: json['uz'] as String?,
      ru: json['ru'] as String?,
      uz_description: json['uz_description'] as String?,
      ru_description: json['ru_description'] as String?,
      image: json['image'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uz': instance.uz,
      'ru': instance.ru,
      'uz_description': instance.uz_description,
      'ru_description': instance.ru_description,
      'image': instance.image,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'products': instance.products,
    };

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
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
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
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
      'images': instance.images,
    };

_$_ProductImage _$$_ProductImageFromJson(Map<String, dynamic> json) =>
    _$_ProductImage(
      id: json['id'] as String?,
      image: json['image'] as String?,
      name: json['name'],
      size: json['size'],
      product_id: json['product_id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_ProductImageToJson(_$_ProductImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'size': instance.size,
      'product_id': instance.product_id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
