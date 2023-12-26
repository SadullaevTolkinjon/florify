import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    String? id,
    String? uz,
    String? ru,

    String? uz_description,
    String? ru_description,
   
    String? image,
    DateTime? created_at,
    DateTime? updated_at,
    List<Product>? products,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, Object?> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    int? id,
    String? name,
    String? description,
    int? price,
    int? quantity,
    String? color,
    DateTime? date,
    String? salesman_id,
    String? category_id,
    DateTime? created_at,
    DateTime? updated_at,
    List<ProductImage>? images,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}

@freezed
class ProductImage with _$ProductImage {
  const factory ProductImage({
    String? image,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, Object?> json) =>
      _$ProductImageFromJson(json);
}
