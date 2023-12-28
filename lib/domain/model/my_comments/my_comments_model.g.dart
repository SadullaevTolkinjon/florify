// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_comments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyCommmentsModel _$$_MyCommmentsModelFromJson(Map<String, dynamic> json) =>
    _$_MyCommmentsModel(
      statusCode: json['statusCode'] as int?,
      data: json['data'] == null
          ? null
          : CommentData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MyCommmentsModelToJson(_$_MyCommmentsModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
    };

_$_CommentData _$$_CommentDataFromJson(Map<String, dynamic> json) =>
    _$_CommentData(
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CommentDataToJson(_$_CommentData instance) =>
    <String, dynamic>{
      'comments': instance.comments,
    };

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      id: json['id'] as String?,
      text: json['text'] as String?,
      client_id: json['client_id'] as String?,
      product_id: json['product_id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'client_id': instance.client_id,
      'product_id': instance.product_id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'product': instance.product,
    };
