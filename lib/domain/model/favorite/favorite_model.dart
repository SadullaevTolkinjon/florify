import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

@freezed
class FavoriteModel with _$FavoriteModel {
  const factory FavoriteModel({
    String? id,
    bool? is_like,
    String? client_id,
    int? product_id,
    DateTime? created_at,
    DateTime? updated_at,
    FavoriteProduct? product,
  }) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, Object?> json) =>
      _$FavoriteModelFromJson(json);
}

@freezed
class FavoriteProduct with _$FavoriteProduct {
  const factory FavoriteProduct({
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
    List<ProductImage>? image,
  }) = _FavoriteProduct;

  factory FavoriteProduct.fromJson(Map<String, Object?> json) =>
      _$FavoriteProductFromJson(json);
}
