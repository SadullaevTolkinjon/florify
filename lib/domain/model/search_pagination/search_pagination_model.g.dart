// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchPaginationModel _$$_SearchPaginationModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchPaginationModel(
      status: json['status'] as int?,
      data: json['data'] == null
          ? null
          : SearchData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchPaginationModelToJson(
        _$_SearchPaginationModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$_SearchData _$$_SearchDataFromJson(Map<String, dynamic> json) =>
    _$_SearchData(
      records: (json['records'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : SearchPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchDataToJson(_$_SearchData instance) =>
    <String, dynamic>{
      'records': instance.records,
      'pagination': instance.pagination,
    };

_$_SearchPagination _$$_SearchPaginationFromJson(Map<String, dynamic> json) =>
    _$_SearchPagination(
      currentPage: json['currentPage'] as int?,
      total_pages: json['total_pages'] as int?,
      total_count: json['total_count'] as int?,
    );

Map<String, dynamic> _$$_SearchPaginationToJson(_$_SearchPagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'total_pages': instance.total_pages,
      'total_count': instance.total_count,
    };
