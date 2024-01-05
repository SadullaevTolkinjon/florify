part of 'write_comment_cubit.dart';

abstract class WriteCommentState {}

@freezed
class WriteCommentsBuildable extends WriteCommentState
    with _$WriteCommentsBuildable {
  const factory WriteCommentsBuildable({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
     @Default(3.0) double rating,
  }) = _WriteCommentsBuildable;
}
