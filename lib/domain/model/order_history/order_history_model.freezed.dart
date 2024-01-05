// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderHistoryModel _$OrderHistoryModelFromJson(Map<String, dynamic> json) {
  return _OrderHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryModel {
  int? get statusCode => throw _privateConstructorUsedError;
  OrderData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryModelCopyWith<OrderHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryModelCopyWith<$Res> {
  factory $OrderHistoryModelCopyWith(
          OrderHistoryModel value, $Res Function(OrderHistoryModel) then) =
      _$OrderHistoryModelCopyWithImpl<$Res, OrderHistoryModel>;
  @useResult
  $Res call({int? statusCode, OrderData? data});

  $OrderDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$OrderHistoryModelCopyWithImpl<$Res, $Val extends OrderHistoryModel>
    implements $OrderHistoryModelCopyWith<$Res> {
  _$OrderHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OrderDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderHistoryModelCopyWith<$Res>
    implements $OrderHistoryModelCopyWith<$Res> {
  factory _$$_OrderHistoryModelCopyWith(_$_OrderHistoryModel value,
          $Res Function(_$_OrderHistoryModel) then) =
      __$$_OrderHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? statusCode, OrderData? data});

  @override
  $OrderDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_OrderHistoryModelCopyWithImpl<$Res>
    extends _$OrderHistoryModelCopyWithImpl<$Res, _$_OrderHistoryModel>
    implements _$$_OrderHistoryModelCopyWith<$Res> {
  __$$_OrderHistoryModelCopyWithImpl(
      _$_OrderHistoryModel _value, $Res Function(_$_OrderHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_OrderHistoryModel(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderHistoryModel implements _OrderHistoryModel {
  const _$_OrderHistoryModel({this.statusCode, this.data});

  factory _$_OrderHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderHistoryModelFromJson(json);

  @override
  final int? statusCode;
  @override
  final OrderData? data;

  @override
  String toString() {
    return 'OrderHistoryModel(statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderHistoryModel &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderHistoryModelCopyWith<_$_OrderHistoryModel> get copyWith =>
      __$$_OrderHistoryModelCopyWithImpl<_$_OrderHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderHistoryModelToJson(
      this,
    );
  }
}

abstract class _OrderHistoryModel implements OrderHistoryModel {
  const factory _OrderHistoryModel(
      {final int? statusCode, final OrderData? data}) = _$_OrderHistoryModel;

  factory _OrderHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_OrderHistoryModel.fromJson;

  @override
  int? get statusCode;
  @override
  OrderData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_OrderHistoryModelCopyWith<_$_OrderHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderData _$OrderDataFromJson(Map<String, dynamic> json) {
  return _OrderData.fromJson(json);
}

/// @nodoc
mixin _$OrderData {
  List<OrderProduct>? get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDataCopyWith<OrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDataCopyWith<$Res> {
  factory $OrderDataCopyWith(OrderData value, $Res Function(OrderData) then) =
      _$OrderDataCopyWithImpl<$Res, OrderData>;
  @useResult
  $Res call({List<OrderProduct>? orders});
}

/// @nodoc
class _$OrderDataCopyWithImpl<$Res, $Val extends OrderData>
    implements $OrderDataCopyWith<$Res> {
  _$OrderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderDataCopyWith<$Res> implements $OrderDataCopyWith<$Res> {
  factory _$$_OrderDataCopyWith(
          _$_OrderData value, $Res Function(_$_OrderData) then) =
      __$$_OrderDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderProduct>? orders});
}

/// @nodoc
class __$$_OrderDataCopyWithImpl<$Res>
    extends _$OrderDataCopyWithImpl<$Res, _$_OrderData>
    implements _$$_OrderDataCopyWith<$Res> {
  __$$_OrderDataCopyWithImpl(
      _$_OrderData _value, $Res Function(_$_OrderData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_$_OrderData(
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderData implements _OrderData {
  const _$_OrderData({final List<OrderProduct>? orders}) : _orders = orders;

  factory _$_OrderData.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDataFromJson(json);

  final List<OrderProduct>? _orders;
  @override
  List<OrderProduct>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderData(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderData &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDataCopyWith<_$_OrderData> get copyWith =>
      __$$_OrderDataCopyWithImpl<_$_OrderData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDataToJson(
      this,
    );
  }
}

abstract class _OrderData implements OrderData {
  const factory _OrderData({final List<OrderProduct>? orders}) = _$_OrderData;

  factory _OrderData.fromJson(Map<String, dynamic> json) =
      _$_OrderData.fromJson;

  @override
  List<OrderProduct>? get orders;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDataCopyWith<_$_OrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderProduct _$OrderProductFromJson(Map<String, dynamic> json) {
  return _OrderProduct.fromJson(json);
}

/// @nodoc
mixin _$OrderProduct {
  int? get id => throw _privateConstructorUsedError;
  String? get client_id => throw _privateConstructorUsedError;
  List<Item>? get items => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get totalAmount => throw _privateConstructorUsedError;
  String? get to_whom_bouquet => throw _privateConstructorUsedError;
  String? get customer_firstname => throw _privateConstructorUsedError;
  String? get customer_lastname => throw _privateConstructorUsedError;
  String? get customer_phone => throw _privateConstructorUsedError;
  String? get receiver_name => throw _privateConstructorUsedError;
  String? get receiver_phone => throw _privateConstructorUsedError;
  String? get full_address => throw _privateConstructorUsedError;
  String? get comment_for_courier => throw _privateConstructorUsedError;
  String? get delivery_time => throw _privateConstructorUsedError;
  String? get payment_type => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Client? get client => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderProductCopyWith<OrderProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductCopyWith<$Res> {
  factory $OrderProductCopyWith(
          OrderProduct value, $Res Function(OrderProduct) then) =
      _$OrderProductCopyWithImpl<$Res, OrderProduct>;
  @useResult
  $Res call(
      {int? id,
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
      Client? client});

  $ClientCopyWith<$Res>? get client;
}

/// @nodoc
class _$OrderProductCopyWithImpl<$Res, $Val extends OrderProduct>
    implements $OrderProductCopyWith<$Res> {
  _$OrderProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? client_id = freezed,
    Object? items = freezed,
    Object? status = freezed,
    Object? totalAmount = freezed,
    Object? to_whom_bouquet = freezed,
    Object? customer_firstname = freezed,
    Object? customer_lastname = freezed,
    Object? customer_phone = freezed,
    Object? receiver_name = freezed,
    Object? receiver_phone = freezed,
    Object? full_address = freezed,
    Object? comment_for_courier = freezed,
    Object? delivery_time = freezed,
    Object? payment_type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? client = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      to_whom_bouquet: freezed == to_whom_bouquet
          ? _value.to_whom_bouquet
          : to_whom_bouquet // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_firstname: freezed == customer_firstname
          ? _value.customer_firstname
          : customer_firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_lastname: freezed == customer_lastname
          ? _value.customer_lastname
          : customer_lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_phone: freezed == customer_phone
          ? _value.customer_phone
          : customer_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      receiver_name: freezed == receiver_name
          ? _value.receiver_name
          : receiver_name // ignore: cast_nullable_to_non_nullable
              as String?,
      receiver_phone: freezed == receiver_phone
          ? _value.receiver_phone
          : receiver_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      full_address: freezed == full_address
          ? _value.full_address
          : full_address // ignore: cast_nullable_to_non_nullable
              as String?,
      comment_for_courier: freezed == comment_for_courier
          ? _value.comment_for_courier
          : comment_for_courier // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_time: freezed == delivery_time
          ? _value.delivery_time
          : delivery_time // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_type: freezed == payment_type
          ? _value.payment_type
          : payment_type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $ClientCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderProductCopyWith<$Res>
    implements $OrderProductCopyWith<$Res> {
  factory _$$_OrderProductCopyWith(
          _$_OrderProduct value, $Res Function(_$_OrderProduct) then) =
      __$$_OrderProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
      Client? client});

  @override
  $ClientCopyWith<$Res>? get client;
}

/// @nodoc
class __$$_OrderProductCopyWithImpl<$Res>
    extends _$OrderProductCopyWithImpl<$Res, _$_OrderProduct>
    implements _$$_OrderProductCopyWith<$Res> {
  __$$_OrderProductCopyWithImpl(
      _$_OrderProduct _value, $Res Function(_$_OrderProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? client_id = freezed,
    Object? items = freezed,
    Object? status = freezed,
    Object? totalAmount = freezed,
    Object? to_whom_bouquet = freezed,
    Object? customer_firstname = freezed,
    Object? customer_lastname = freezed,
    Object? customer_phone = freezed,
    Object? receiver_name = freezed,
    Object? receiver_phone = freezed,
    Object? full_address = freezed,
    Object? comment_for_courier = freezed,
    Object? delivery_time = freezed,
    Object? payment_type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? client = freezed,
  }) {
    return _then(_$_OrderProduct(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      to_whom_bouquet: freezed == to_whom_bouquet
          ? _value.to_whom_bouquet
          : to_whom_bouquet // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_firstname: freezed == customer_firstname
          ? _value.customer_firstname
          : customer_firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_lastname: freezed == customer_lastname
          ? _value.customer_lastname
          : customer_lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_phone: freezed == customer_phone
          ? _value.customer_phone
          : customer_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      receiver_name: freezed == receiver_name
          ? _value.receiver_name
          : receiver_name // ignore: cast_nullable_to_non_nullable
              as String?,
      receiver_phone: freezed == receiver_phone
          ? _value.receiver_phone
          : receiver_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      full_address: freezed == full_address
          ? _value.full_address
          : full_address // ignore: cast_nullable_to_non_nullable
              as String?,
      comment_for_courier: freezed == comment_for_courier
          ? _value.comment_for_courier
          : comment_for_courier // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_time: freezed == delivery_time
          ? _value.delivery_time
          : delivery_time // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_type: freezed == payment_type
          ? _value.payment_type
          : payment_type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderProduct implements _OrderProduct {
  const _$_OrderProduct(
      {this.id,
      this.client_id,
      final List<Item>? items,
      this.status,
      this.totalAmount,
      this.to_whom_bouquet,
      this.customer_firstname,
      this.customer_lastname,
      this.customer_phone,
      this.receiver_name,
      this.receiver_phone,
      this.full_address,
      this.comment_for_courier,
      this.delivery_time,
      this.payment_type,
      this.createdAt,
      this.updatedAt,
      this.client})
      : _items = items;

  factory _$_OrderProduct.fromJson(Map<String, dynamic> json) =>
      _$$_OrderProductFromJson(json);

  @override
  final int? id;
  @override
  final String? client_id;
  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;
  @override
  final int? totalAmount;
  @override
  final String? to_whom_bouquet;
  @override
  final String? customer_firstname;
  @override
  final String? customer_lastname;
  @override
  final String? customer_phone;
  @override
  final String? receiver_name;
  @override
  final String? receiver_phone;
  @override
  final String? full_address;
  @override
  final String? comment_for_courier;
  @override
  final String? delivery_time;
  @override
  final String? payment_type;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Client? client;

  @override
  String toString() {
    return 'OrderProduct(id: $id, client_id: $client_id, items: $items, status: $status, totalAmount: $totalAmount, to_whom_bouquet: $to_whom_bouquet, customer_firstname: $customer_firstname, customer_lastname: $customer_lastname, customer_phone: $customer_phone, receiver_name: $receiver_name, receiver_phone: $receiver_phone, full_address: $full_address, comment_for_courier: $comment_for_courier, delivery_time: $delivery_time, payment_type: $payment_type, createdAt: $createdAt, updatedAt: $updatedAt, client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderProduct &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.client_id, client_id) ||
                other.client_id == client_id) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.to_whom_bouquet, to_whom_bouquet) ||
                other.to_whom_bouquet == to_whom_bouquet) &&
            (identical(other.customer_firstname, customer_firstname) ||
                other.customer_firstname == customer_firstname) &&
            (identical(other.customer_lastname, customer_lastname) ||
                other.customer_lastname == customer_lastname) &&
            (identical(other.customer_phone, customer_phone) ||
                other.customer_phone == customer_phone) &&
            (identical(other.receiver_name, receiver_name) ||
                other.receiver_name == receiver_name) &&
            (identical(other.receiver_phone, receiver_phone) ||
                other.receiver_phone == receiver_phone) &&
            (identical(other.full_address, full_address) ||
                other.full_address == full_address) &&
            (identical(other.comment_for_courier, comment_for_courier) ||
                other.comment_for_courier == comment_for_courier) &&
            (identical(other.delivery_time, delivery_time) ||
                other.delivery_time == delivery_time) &&
            (identical(other.payment_type, payment_type) ||
                other.payment_type == payment_type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.client, client) || other.client == client));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      client_id,
      const DeepCollectionEquality().hash(_items),
      status,
      totalAmount,
      to_whom_bouquet,
      customer_firstname,
      customer_lastname,
      customer_phone,
      receiver_name,
      receiver_phone,
      full_address,
      comment_for_courier,
      delivery_time,
      payment_type,
      createdAt,
      updatedAt,
      client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderProductCopyWith<_$_OrderProduct> get copyWith =>
      __$$_OrderProductCopyWithImpl<_$_OrderProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderProductToJson(
      this,
    );
  }
}

abstract class _OrderProduct implements OrderProduct {
  const factory _OrderProduct(
      {final int? id,
      final String? client_id,
      final List<Item>? items,
      final String? status,
      final int? totalAmount,
      final String? to_whom_bouquet,
      final String? customer_firstname,
      final String? customer_lastname,
      final String? customer_phone,
      final String? receiver_name,
      final String? receiver_phone,
      final String? full_address,
      final String? comment_for_courier,
      final String? delivery_time,
      final String? payment_type,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final Client? client}) = _$_OrderProduct;

  factory _OrderProduct.fromJson(Map<String, dynamic> json) =
      _$_OrderProduct.fromJson;

  @override
  int? get id;
  @override
  String? get client_id;
  @override
  List<Item>? get items;
  @override
  String? get status;
  @override
  int? get totalAmount;
  @override
  String? get to_whom_bouquet;
  @override
  String? get customer_firstname;
  @override
  String? get customer_lastname;
  @override
  String? get customer_phone;
  @override
  String? get receiver_name;
  @override
  String? get receiver_phone;
  @override
  String? get full_address;
  @override
  String? get comment_for_courier;
  @override
  String? get delivery_time;
  @override
  String? get payment_type;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Client? get client;
  @override
  @JsonKey(ignore: true)
  _$$_OrderProductCopyWith<_$_OrderProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  int? get quantity => throw _privateConstructorUsedError;
  int? get product_id => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call({int? quantity, int? product_id, Product? product});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? product_id = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? quantity, int? product_id, Product? product});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? product_id = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_Item(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  const _$_Item({this.quantity, this.product_id, this.product});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final int? quantity;
  @override
  final int? product_id;
  @override
  final Product? product;

  @override
  String toString() {
    return 'Item(quantity: $quantity, product_id: $product_id, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, product_id, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {final int? quantity,
      final int? product_id,
      final Product? product}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  int? get quantity;
  @override
  int? get product_id;
  @override
  Product? get product;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}
