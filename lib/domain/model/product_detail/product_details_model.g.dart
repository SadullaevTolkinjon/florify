// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailModel _$$_ProductDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailModel(
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
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      salesman: json['salesman'] == null
          ? null
          : Salesman.fromJson(json['salesman'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : ProductDetailCategory.fromJson(
              json['category'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      like: json['like'] as List<dynamic>?,
      comments: json['comments'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_ProductDetailModelToJson(
        _$_ProductDetailModel instance) =>
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
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'salesman': instance.salesman,
      'category': instance.category,
      'images': instance.images,
      'like': instance.like,
      'comments': instance.comments,
    };

_$_Salesman _$$_SalesmanFromJson(Map<String, dynamic> json) => _$_Salesman(
      id: json['id'] as String?,
      username: json['username'],
      phone: json['phone'] as String?,
      telegram: json['telegram'],
      hashed_password: json['hashed_password'] as String?,
      image: json['image'],
      hashed_refresh_token: json['hashed_refresh_token'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SalesmanToJson(_$_Salesman instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'phone': instance.phone,
      'telegram': instance.telegram,
      'hashed_password': instance.hashed_password,
      'image': instance.image,
      'hashed_refresh_token': instance.hashed_refresh_token,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'products': instance.products,
    };

_$_ProductDetailCategory _$$_ProductDetailCategoryFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailCategory(
      id: json['id'] as String?,
      uz: json['uz'] as String?,
      ru: json['ru'] as String?,
      uzDescription: json['uzDescription'],
      ruDescription: json['ruDescription'],
      image: json['image'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_ProductDetailCategoryToJson(
        _$_ProductDetailCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uz': instance.uz,
      'ru': instance.ru,
      'uzDescription': instance.uzDescription,
      'ruDescription': instance.ruDescription,
      'image': instance.image,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
