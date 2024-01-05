import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/presentation/onboarding/components/onborading_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intro_screen_onboarding_flutter/circle_progress_bar.dart';

class OnboarPagingWidget extends StatefulWidget {
  final List<OnboardingComponent>? introductionList;
  final Color? backgroudColor;
  final Color? foregroundColor;
  final TextStyle? skipTextStyle;
  final Function()? onTapSkipButton;
  const OnboarPagingWidget({
    super.key,
    this.introductionList,
    this.onTapSkipButton,
    this.backgroudColor,
    this.foregroundColor,
    this.skipTextStyle = const TextStyle(fontSize: 20),
  });

  @override
  State<OnboarPagingWidget> createState() => _OnboarPagingWidgetState();
}

class _OnboarPagingWidgetState extends State<OnboarPagingWidget> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  double progressPercent = 0;

  @override
  Widget build(BuildContext context) {
    return   Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: widget.onTapSkipButton,
                      child: Text('Skip', style: widget.skipTextStyle),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: PageView(
                    physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: widget.introductionList!,
                  ),
                ),
              ),
              //                Row(
              //                  mainAxisAlignment: MainAxisAlignment.center,
              //                  children: _buildPageIndicator(),
              //                ),
              _customProgress(),
              //_buildNextButton(),
            ],
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
            backgroundColor: Colors.white,
            foregroundColor:
                widget.foregroundColor ?? Theme.of(context).primaryColor,
            value: ((_currentPage + 1) * 1.0 / widget.introductionList!.length),
          ),
        ),
        Container(
          height: AppSizes.geth(context, 0.060),
          width: AppSizes.geth(context, 0.060),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: (widget.foregroundColor ?? Theme.of(context).primaryColor)
                .withOpacity(0.5),
          ),
          child: IconButton(
            onPressed: () {
              _currentPage != widget.introductionList!.length - 1
                  ? _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    )
                  : widget.onTapSkipButton!();
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            iconSize: 15,
          ),
        )
      ],
    );
  }
}
