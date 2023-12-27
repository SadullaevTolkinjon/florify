import 'dart:convert';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_history_model.freezed.dart';
part 'order_history_model.g.dart';

@freezed
class OrderHistoryModel with _$OrderHistoryModel {
  const factory OrderHistoryModel({
    int? statusCode,
    OrderData? data,
  }) = _OrderHistoryModel;

  factory OrderHistoryModel.fromJson(Map<String, Object?> json) =>
      _$OrderHistoryModelFromJson(json);
}

@freezed
class OrderData with _$OrderData {
  const factory OrderData({List<OrderProduct>? orders}) = _OrderData;
  factory OrderData.fromJson(Map<String, Object?> json) =>
      _$OrderDataFromJson(json);
}

@freezed
class OrderProduct with _$OrderProduct {
  const factory OrderProduct({
    int? id,
    String? client_id,
    List<Item>? items,
    String? status,
    int? totalAmount,
    String? to_whom_bouquet,
    String? customer_firstname,
    String? customer_lastname,
    String? customer_phone,
    String? receiver_name,
    String? receiver_phone,
    String? full_address,
    String? comment_for_courier,
    String? delivery_time,
    String? payment_type,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _OrderProduct;
  factory OrderProduct.fromJson(Map<String, Object?> json) => _$OrderProductFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    int? quantity,
    int? product_id,
    Product? product
  }) = _Item;
  factory Item.fromJson(Map<String, Object?> json) => _$ItemFromJson(json);
}
