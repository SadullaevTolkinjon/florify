// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderHistoryModel _$$_OrderHistoryModelFromJson(Map<String, dynamic> json) =>
    _$_OrderHistoryModel(
      statusCode: json['statusCode'] as int?,
      data: json['data'] == null
          ? null
          : OrderData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderHistoryModelToJson(
        _$_OrderHistoryModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
    };

_$_OrderData _$$_OrderDataFromJson(Map<String, dynamic> json) => _$_OrderData(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderDataToJson(_$_OrderData instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

_$_OrderProduct _$$_OrderProductFromJson(Map<String, dynamic> json) =>
    _$_OrderProduct(
      id: json['id'] as int?,
      client_id: json['client_id'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      totalAmount: json['totalAmount'] as int?,
      to_whom_bouquet: json['to_whom_bouquet'] as String?,
      customer_firstname: json['customer_firstname'] as String?,
      customer_lastname: json['customer_lastname'] as String?,
      customer_phone: json['customer_phone'] as String?,
      receiver_name: json['receiver_name'] as String?,
      receiver_phone: json['receiver_phone'] as String?,
      full_address: json['full_address'] as String?,
      comment_for_courier: json['comment_for_courier'] as String?,
      delivery_time: json['delivery_time'] as String?,
      payment_type: json['payment_type'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_OrderProductToJson(_$_OrderProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client_id': instance.client_id,
      'items': instance.items,
      'status': instance.status,
      'totalAmount': instance.totalAmount,
      'to_whom_bouquet': instance.to_whom_bouquet,
      'customer_firstname': instance.customer_firstname,
      'customer_lastname': instance.customer_lastname,
      'customer_phone': instance.customer_phone,
      'receiver_name': instance.receiver_name,
      'receiver_phone': instance.receiver_phone,
      'full_address': instance.full_address,
      'comment_for_courier': instance.comment_for_courier,
      'delivery_time': instance.delivery_time,
      'payment_type': instance.payment_type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      quantity: json['quantity'] as int?,
      product_id: json['product_id'] as int?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'quantity': instance.quantity,
      'product_id': instance.product_id,
      'product': instance.product,
    };
