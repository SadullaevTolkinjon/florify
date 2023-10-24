import 'dart:convert';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'recently_product_model.freezed.dart';
part 'recently_product_model.g.dart';

@freezed
class RecentlyProductModel with _$RecentlyProductModel {
 

 const factory RecentlyProductModel({
    String? id,
  bool? is_watched,
  String? client_id,
  int? product_id,
  DateTime? created_at,
  DateTime? updated_at,
  Product? product,
  }) = _RecentlyProductModel;

  factory RecentlyProductModel.fromJson(Map<String, Object?> json) =>
      _$RecentlyProductModelFromJson(json);
}
