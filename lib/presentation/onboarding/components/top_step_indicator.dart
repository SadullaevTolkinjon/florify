import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class TopStepIndicator extends StatelessWidget {
  const TopStepIndicator({super.key,required this.currentIndex});
final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:  AppSizes.geth(context, 0.01),
      right: AppSizes.geth(context, 0.02),
      left: AppSizes.geth(context, 0.02),
      child: SafeArea(
        child: StepProgressIndicator(
          totalSteps: 3,
          currentStep: currentIndex,
          selectedColor: ColorConstants.white,
          unselectedColor: ColorConstants.black.withOpacity(0.1),
          size: 2.5,
        ),
      ),
    );
  }
}
