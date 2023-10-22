import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikeBtn extends StatelessWidget {
  const LikeBtn(
      {super.key, required this.ontap, this.isBorder, required this.isLike});
  final Function ontap;
  final bool? isBorder;
  final bool isLike;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
              color: isBorder == null || isBorder == false
                  ? ColorConstants.white
                  : ColorConstants.black.withOpacity(0.2)),
          color: ColorConstants.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        height: 28,
        width: 28,
        child: isLike==true
            ? Icon(
                Icons.favorite,
                color: ColorConstants.kRed,
                size: AppSizes.geth(context, 0.02),
              )
            : SvgPicture.asset(
                IconConstants.like,
              ),
      ),
    );
  }
}
