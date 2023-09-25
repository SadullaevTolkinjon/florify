import 'package:bloc/bloc.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../constants/navigator/navigator_const.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

@injectable
class OnboardingCubit
    extends BuildableCubit<OnboardingState, OnboardingBuildable> {
  OnboardingCubit() : super(const OnboardingBuildable());

  changeOnboarding(BuildContext context) {
    int currentindex = buildable.currentIndex + 1;
    int selectedTab = buildable.selectedTab + 35;
    if (currentindex < 3) {
      build(
        (buildable) => buildable.copyWith(
            currentIndex: currentindex, selectedTab: selectedTab),
      );
    } else if (currentindex > 2) {
      Navigator.pushNamed(context, NavigatorConst.sign_up_page);
    }
  }
}
