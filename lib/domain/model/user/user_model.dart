import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? statusCode,
    String? message,
    Data? data,
    String? token,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

@freezed
class Client with _$Client {
  const factory Client({
    String? id,
    String? phone,
    DateTime? updatedAt,
    DateTime? createdAt,
    dynamic name,
    dynamic address,
  }) = _Client;

  factory Client.fromJson(Map<String, Object?> json) => _$ClientFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    Client? client,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

