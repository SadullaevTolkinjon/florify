import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';

class ShowProductsBtn extends StatelessWidget {
  const ShowProductsBtn({
    super.key,
    required this.ontap,
    required this.icon,
    required this.title,
  });
  final Function ontap;
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: AppSizes.geth(context, 0.02),
              fontWeight: FontWeight.w500,
              color: ColorConstants.selectedNavBarColor,
            ),
          ),
          icon
        ],
      ),
    );
  }
}
