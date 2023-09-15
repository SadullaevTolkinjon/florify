

import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';

class CounterBtn extends StatelessWidget {
  const CounterBtn({
    super.key,required this.ontap,required this.icon
  });
final Function ontap;
final Widget icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        height:
            AppSizes.getH(context) *
                0.024,
        width:
            AppSizes.getH(context) *
                0.024,
        decoration: BoxDecoration(
          color: ColorConstants.grey,
          borderRadius:
              BorderRadius.all(
            Radius.circular(
              AppSizes.getH(context) *
                  0.006,
            ),
          ),
        ),
        alignment: Alignment.center,
        child: icon
      ),
    );
  }
}
