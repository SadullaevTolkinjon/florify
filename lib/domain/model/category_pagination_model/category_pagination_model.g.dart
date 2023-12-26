// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryPaginationModel _$$_CategoryPaginationModelFromJson(
        Map<String, dynamic> json) =>
    _$_CategoryPaginationModel(
      status: json['status'] as int?,
      data: json['data'] == null
          ? null
          : CategoryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CategoryPaginationModelToJson(
        _$_CategoryPaginationModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$_CategoryData _$$_CategoryDataFromJson(Map<String, dynamic> json) =>
    _$_CategoryData(
      records: (json['records'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CategoryDataToJson(_$_CategoryData instance) =>
    <String, dynamic>{
      'records': instance.records,
      'pagination': instance.pagination,
    };

_$_Pagination _$$_PaginationFromJson(Map<String, dynamic> json) =>
    _$_Pagination(
      currentPage: json['currentPage'] as int?,
      total_pages: json['total_pages'] as int?,
      total_count: json['total_count'] as int?,
    );

Map<String, dynamic> _$$_PaginationToJson(_$_Pagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'total_pages': instance.total_pages,
      'total_count': instance.total_count,
    };
