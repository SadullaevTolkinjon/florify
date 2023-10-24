// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecentlyProductModel _$$_RecentlyProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_RecentlyProductModel(
      id: json['id'] as String?,
      is_watched: json['is_watched'] as bool?,
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
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RecentlyProductModelToJson(
        _$_RecentlyProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_watched': instance.is_watched,
      'client_id': instance.client_id,
      'product_id': instance.product_id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'product': instance.product,
    };
