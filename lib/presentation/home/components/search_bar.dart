import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/icons/icon_constants.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key, required this.ontap,this.title});
  final Function ontap;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        height: AppSizes.getH(context) * 0.06,
        decoration: BoxDecoration(
          color: ColorConstants.grey,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            SvgPicture.asset(IconConstants.search),
             MyPadding(
              width: AppSizes.getH(context)*0.014,
            ),
            Text(
             title?? "Search flowers",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.unSelectedNavBar),
            )
          ],
        ),
      ),
    );
  }
}
