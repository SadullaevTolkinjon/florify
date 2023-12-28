part of 'my_comments_cubit.dart';

abstract class MyCommentsState {}

@freezed
class MyCommentsBuildable extends MyCommentsState with _$MyCommentsBuildable {
  const factory MyCommentsBuildable({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
  }) = _MyCommentsBuildable;
}
