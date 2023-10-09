part of 'sign_up_cubit.dart';

abstract class SignUpState {}

@freezed
class SignUpBuildable extends SignUpState with _$SignUpBuildable {
  const factory SignUpBuildable({
    @Default(false) bool loading,
    @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    @Default(false) bool isSuccess,
  }) = _SignUpBuildable;
}
