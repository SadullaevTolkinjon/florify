part of 'sms_verify_cubit.dart';

abstract class SmsVerifyState {}

@freezed
class SmsVerifyBuildable extends SmsVerifyState with _$SmsVerifyBuildable {
  const factory SmsVerifyBuildable({
    @Default(false) bool loading,
    @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    @Default(false) bool isCompleted,
  }) = _SmsVerifyBuildable;
}
