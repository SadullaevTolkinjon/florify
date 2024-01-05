import 'dart:convert';

import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/my_comments/my_comments_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';



@freezed
class ProductDetailsModel with _$ProductDetailsModel {
  const factory ProductDetailsModel({
    int? statusCode,
    ProductDetailsData? data,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, Object?> json) =>
      _$ProductDetailsModelFromJson(json);
}

@freezed
class ProductDetailsData with _$ProductDetailsData {
  const factory ProductDetailsData({
    DetailsProduct? product,
    String? share_link,
    List<Product>? similar_products,
  }) = _ProductDetailsData;

  factory ProductDetailsData.fromJson(Map<String, Object?> json) =>
      _$ProductDetailsDataFromJson(json);
}

@freezed
class DetailsProduct with _$DetailsProduct {
  const factory DetailsProduct({
    int? id,
    String? name,
    int? price,
    int? quantity,
    String? description,
    dynamic color,
    DateTime? date,
    String? salesman_id,
    String? category_id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Salesman? salesman,
    ProductDetailCategory? category,
    List<ProductImage>? images,
    List<dynamic>? likes,
    List<Comment>? comments,
  }) = _DetailsProduct;

  factory DetailsProduct.fromJson(Map<String, Object?> json) =>
      _$DetailsProductFromJson(json);
}

@freezed
class ProductDetailCategory with _$ProductDetailCategory {
  const factory ProductDetailCategory({
    String? id,
    String? uz,
    String? ru,
    dynamic uz_description,
    dynamic ru_description,
    String? image,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProductDetailCategory;

  factory ProductDetailCategory.fromJson(Map<String, Object?> json) =>
      _$ProductDetailCategoryFromJson(json);
}


@freezed
class Salesman with _$Salesman {
  const factory Salesman({
    String? id,
    dynamic username,
    String? phone,
    dynamic telegram,
    String? hashed_password,
    dynamic image,
    String? hashed_refresh_token,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<Product>? products,
  }) = _Salesman;

  factory Salesman.fromJson(Map<String, Object?> json) =>
      _$SalesmanFromJson(json);
}