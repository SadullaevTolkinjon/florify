import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';

class OnboardingComponent extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final double? imageWidth;
  final double? imageHeight;
  final TextStyle titleTextStyle;
  final TextStyle subTitleTextStyle;
  const OnboardingComponent({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    this.titleTextStyle = const TextStyle(fontSize: 30),
    this.subTitleTextStyle = const TextStyle(fontSize: 20),
    this.imageWidth = 360,
    this.imageHeight = 360,
  });

  @override
  State<OnboardingComponent> createState() => _OnboardingComponentState();
}

class _OnboardingComponentState extends State<OnboardingComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  widget.imageUrl,
                ),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
              bottom: AppSizes.geth(context, 0.2),
              right: AppSizes.geth(context, 0.02),
              left: AppSizes.geth(context, 0.02),
              child: Text(
                widget.title,
                style: TextStyle(
                    color: ColorConstants.white,
                    fontSize: AppSizes.geth(context, 0.02),
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        )

        //  Padding(
        //   padding: const EdgeInsets.all(0),
        //   child: Column(
        //     //crossAxisAlignment: CrossAxisAlignment.start,
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Center(
        //         child: Image(
        //           image: AssetImage(widget.imageUrl),
        //           height: widget.imageHeight,
        //           width: widget.imageWidth,
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 20.0,
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Text(
        //             widget.title,
        //             textAlign: TextAlign.center,
        //             overflow: TextOverflow.clip,
        //             style: widget.titleTextStyle,
        //           ),
        //         ],
        //       ),
        //       const SizedBox(
        //         height: 10.0,
        //       ),
        //       Text(
        //         widget.subTitle,
        //         style: widget.subTitleTextStyle,
        //         overflow: TextOverflow.clip,
        //         textAlign: TextAlign.center,
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
