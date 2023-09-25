part of 'onboarding_cubit.dart';

abstract class OnboardingState {}

@freezed
class OnboardingBuildable extends OnboardingState with _$OnboardingBuildable {
  const factory OnboardingBuildable({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    @Default(0) int currentIndex,
     @Default(35) int selectedTab,
  }) = _OnboardingBuildable;
}
