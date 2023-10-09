import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'card_product_model.freezed.dart';
part 'card_product_model.g.dart';

@freezed
class CardProduct with _$CardProduct {
  const factory CardProduct({
    int? id,
    int? sum_quantity,
    String? name,
    String? description,
    int? price,
    int? sum_price,
    int? quantity,
    String? color,
    DateTime? date,
    String? salesman_id,
    String? category_id,
    DateTime? created_at,
    DateTime? updated_at,
    List<ProductImage>? image,
  }) = _CardProduct;

  factory CardProduct.fromJson(Map<String, Object?> json) =>
      _$CardProductFromJson(json);
}

