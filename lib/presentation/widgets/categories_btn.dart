

import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';

class CategoriesBtn extends StatelessWidget {
  const CategoriesBtn({
    super.key,
    required this.isSelected,
    required this.ontap,
  });
  final bool isSelected;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Text(
          "Tavfsiyalar",
          style: TextStyle(
            fontSize: AppSizes.getH(context)*0.018,
            fontWeight: FontWeight.w500,
            color: isSelected==true
                ? ColorConstants.selectedNavBarColor
                : ColorConstants.black,
          ),
        ),
      ),
    );
  }
}
