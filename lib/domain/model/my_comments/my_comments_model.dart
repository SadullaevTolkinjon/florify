import 'dart:convert';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_comments_model.freezed.dart';
part 'my_comments_model.g.dart';

@freezed
class MyCommmentsModel with _$MyCommmentsModel {
  const factory MyCommmentsModel({
    int? statusCode,
    CommentData? data,
  }) = _MyCommmentsModel;

  factory MyCommmentsModel.fromJson(Map<String, Object?> json) =>
      _$MyCommmentsModelFromJson(json);
}

@freezed
class CommentData with _$CommentData {
  const factory CommentData({
    List<Comment>? comments,
  }) = _CommentData;

  factory CommentData.fromJson(Map<String, Object?> json) =>
      _$CommentDataFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    String? id,
    String? text,
    String? client_id,
    int? product_id,
    DateTime? createdAt,
    DateTime? updatedAt,
    Product? product,
  }) = _Comment;

  factory Comment.fromJson(Map<String, Object?> json) =>
      _$CommentFromJson(json);
}
