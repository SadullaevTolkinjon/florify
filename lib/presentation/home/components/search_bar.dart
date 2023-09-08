

import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/icons/icon_constants.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key, required this.ontap});
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        height: 60,
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
            const MyPadding(
              width: 16.0,
            ),
            Text(
              "Search flowers",
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
