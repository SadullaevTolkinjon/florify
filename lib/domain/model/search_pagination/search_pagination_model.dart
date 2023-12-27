import 'dart:convert';

import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_pagination_model.freezed.dart';
part 'search_pagination_model.g.dart';

@freezed
class SearchPaginationModel with _$SearchPaginationModel {
  const factory SearchPaginationModel({
    int? status,
    SearchData? data,
  }) = _SearchPaginationModel;

  factory SearchPaginationModel.fromJson(Map<String, Object?> json) =>
      _$SearchPaginationModelFromJson(json);
}

@freezed
class SearchData with _$SearchData {
  const factory SearchData({
    List<Product>? records,
    SearchPagination? pagination,
  }) = _SearchData;

  factory SearchData.fromJson(Map<String, Object?> json) =>
      _$SearchDataFromJson(json);
}

@freezed
class SearchPagination with _$SearchPagination {
  const factory SearchPagination({
    int? currentPage,
    int? total_pages,
    int? total_count,
  }) = _SearchPagination;

  factory SearchPagination.fromJson(Map<String, Object?> json) =>
      _$SearchPaginationFromJson(json);
}
