import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_pagination_model.freezed.dart';
part 'category_pagination_model.g.dart';

@freezed
class CategoryPaginationModel with _$CategoryPaginationModel {
  const factory CategoryPaginationModel({
    int? status,
    CategoryData? data,
  }) = _CategoryPaginationModel;

  factory CategoryPaginationModel.fromJson(Map<String, Object?> json) =>
      _$CategoryPaginationModelFromJson(json);
}

@freezed
class CategoryData with _$CategoryData {
  const factory CategoryData({
    List<Product?>? records,
    Pagination? pagination,
  }) = _CategoryData;

  factory CategoryData.fromJson(Map<String, Object?> json) =>
      _$CategoryDataFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    int? currentPage,
    int? total_pages,
    int? total_count,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, Object?> json) =>
      _$PaginationFromJson(json);
}
