import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/images/images_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/onboarding/components/title_onboarding.dart';
import 'package:florify/presentation/onboarding/components/top_step_indicator.dart';
import 'package:florify/presentation/onboarding/cubit/onboarding_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<OnboardingCubit, OnboardingState>(
        listenWhen: (previous, current) => current is OnboardingBuildable,
        listener: (context, state) {
          if (state is OnboardingBuildable) {}
        },
        child: Buildable<OnboardingCubit, OnboardingState, OnboardingBuildable>(
          properties: (buildable) =>
              [buildable.currentIndex, buildable.selectedTab],
          builder: (context, state) {
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagesOnborading[state.currentIndex]),
                    fit: BoxFit.cover),
              ),
              child: Stack(
                children: [
                  TopStepIndicator(
                    currentIndex: state.currentIndex + 1,
                  ),
                  Positioned(
                    top: AppSizes.geth(context, 0.09),
                    right: AppSizes.geth(context, 0.02),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, NavigatorConst.home);
                      },
                      child: Text(
                        "O'tkazish",
                        style: TextStyle(
                          color: ColorConstants.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                 TitleOnboarding(currentIndex: state.currentIndex,),
                  Positioned(
                    bottom: AppSizes.geth(context, 0.08),
                    child: Container(
                      height: AppSizes.geth(context, 0.1),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: AppSizes.geth(context, 0.1),
                        width: AppSizes.geth(context, 0.1),
                        child: CircularStepProgressIndicator(
                          totalSteps: 100,
                          currentStep: state.selectedTab,
                          height: AppSizes.geth(context, 0.1),
                          width: AppSizes.geth(context, 0.1),
                          stepSize: AppSizes.geth(context, 0.003),
                          selectedColor: ColorConstants.white,
                          unselectedColor:
                              ColorConstants.black.withOpacity(0.1),
                          padding: 0,
                          selectedStepSize: AppSizes.geth(context, 0.003),
                          removeRoundedCapExtraAngle: false,
                          child: GestureDetector(
                            onTap: () {
                              BlocProvider.of<OnboardingCubit>(context)
                                  .changeOnboarding(context);
                            },
                            child: Container(
                              height: AppSizes.geth(context, 0.08),
                              width: AppSizes.geth(context, 0.08),
                              margin:
                                  EdgeInsets.all(AppSizes.geth(context, 0.01)),
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: const Icon(Icons.arrow_forward),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List imagesOnborading = [
    ImagesConst.onbording1,
    ImagesConst.onbording2,
    ImagesConst.onbording3,
  ];
 
}
