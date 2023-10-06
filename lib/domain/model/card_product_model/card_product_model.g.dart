// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardProduct _$$_CardProductFromJson(Map<String, dynamic> json) =>
    _$_CardProduct(
      id: json['id'] as int?,
      sum_quantity: json['sum_quantity'] as int?,
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

Map<String, dynamic> _$$_CardProductToJson(_$_CardProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sum_quantity': instance.sum_quantity,
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
