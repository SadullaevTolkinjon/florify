import 'dart:convert';

import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
class ProductDetailModel with _$ProductDetailModel {
  const factory ProductDetailModel({
    int? id,
    String? name,
    String? description,
    int? price,
    int? quantity,
    String? color,
    DateTime? date,
    String? salesman_id,
    String? category_id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Salesman? salesman,
    CategoryModel? category,
    List<ProductImage>? image,
    List<dynamic>? like,
    List<dynamic>? soldProduct,
  }) = _ProductDetailModel;

  factory ProductDetailModel.fromJson(Map<String, Object?> json) =>
      _$ProductDetailModelFromJson(json);
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
