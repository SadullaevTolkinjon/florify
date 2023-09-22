import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_sizes/app_sizes_const.dart';

class ChooseLangBtn extends StatelessWidget {
  const ChooseLangBtn(
      {super.key,
      required this.ontap,
      required this.isSelected,
      required this.title,
      required this.countryLogo});
  final Function ontap;
  final bool isSelected;
  final String title;
  final String countryLogo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        height: AppSizes.geth(context, 0.055),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstants.black.withOpacity(0.1),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.geth(context, 0.014),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(countryLogo),
                MyPadding(
                  width: AppSizes.geth(context, 0.01),
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: AppSizes.getH(context) * 0.018,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SvgPicture.asset(
              isSelected
                  ? IconConstants.selected_lang
                  : IconConstants.unselected_lang,
            ),
          ],
        ),
      ),
    );
  }
}
