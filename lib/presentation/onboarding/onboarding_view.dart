import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/images/images_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/presentation/auth/sign_up/sign_in_page.dart';
import 'package:florify/presentation/home/home_page.dart';
import 'package:florify/presentation/onboarding/components/onboard_paging_widget.dart';
import 'package:florify/presentation/onboarding/components/onborading_component.dart';
import 'package:florify/presentation/onboarding/components/title_onboarding.dart';
import 'package:florify/presentation/onboarding/components/top_step_indicator.dart';
import 'package:florify/presentation/onboarding/cubit/onboarding_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intro_screen_onboarding_flutter/circle_progress_bar.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;
  double progressPercent = 0;
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
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: PageView(
                      physics: const ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        BlocProvider.of<OnboardingCubit>(context)
                            .changeOnboarding(context, page);
                        _currentPage = page;
                      },
                      children: const [
                        OnboardingComponent(
                          imageUrl: ImagesConst.onbording1,
                          title:
                              "Bizning do'konimizda eng zamonaviy gul xilma-xil turlari mavjud. Siz o'zingizga yoqgan gullarni topasiz.",
                          subTitle: "",
                        ),
                        OnboardingComponent(
                            imageUrl: ImagesConst.onbording2,
                            title:
                                "Bizning tez yetkazib berish xizmatimiz sizning buyurtmangizni yaxshi vaqtida qabul qilish vaqtini ta'minlaydi.",
                            subTitle: ""),
                        OnboardingComponent(
                          imageUrl: ImagesConst.onbording3,
                          title:
                              "Biz bilan hamkorlik qiling. Mahsulotlaringizni biz bilan soting",
                          subTitle: "",
                        )
                      ],
                    ),
                  ),
                  TopStepIndicator(
                    currentIndex: state.currentIndex + 1,
                  ),
                  Positioned(
                    top: AppSizes.geth(context, 0.09),
                    right: AppSizes.geth(context, 0.02),
                    child: TextButton(
                      onPressed: () async {
                        await locator<TokenPreference>().setSplash(2);
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
                  Positioned(
                    right: 10,
                    left: 10,
                      bottom: AppSizes.geth(context, 0.08),
                      child: _customProgress())
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _customProgress() {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: AppSizes.geth(context, 0.082),
          height: AppSizes.geth(context, 0.082),
          child: CircleProgressBar(
            backgroundColor: ColorConstants.grey100.withOpacity(0.3),
            foregroundColor: ColorConstants.white,
            value: ((_currentPage + 1) * 1.0 / 3),
          ),
        ),
        Container(
          height: AppSizes.geth(context, 0.060),
          width: AppSizes.geth(context, 0.060),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorConstants.white,
          ),
          child: IconButton(
            onPressed: () {
              _currentPage != 2
                  ? _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    )
                  : Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()),
                      (route) => false);
            },
            icon:  Icon(
              Icons.arrow_forward,
              color: ColorConstants.black,
            ),
            iconSize: AppSizes.geth(context, 0.025),
          ),
        )
      ],
    );
  }
}
