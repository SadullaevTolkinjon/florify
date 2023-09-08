part of 'splash_screen_cubit.dart';

abstract class SplashScreenState {}

@freezed
class SplashScreenBuildable extends SplashScreenState
    with _$SplashScreenBuildable {
  const factory SplashScreenBuildable({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
  }) = _SplashScreenBuildable;
}
