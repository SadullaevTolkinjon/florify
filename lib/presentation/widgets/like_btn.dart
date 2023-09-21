
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikeBtn extends StatelessWidget {
  const LikeBtn({
    super.key,
    required this.ontap,
    this.isBorder
  });
  final Function ontap;
 final bool? isBorder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color:isBorder==null||isBorder==false?ColorConstants.white: ColorConstants.black.withOpacity(0.2)),
          color: ColorConstants.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        height: 28,
        width: 28,
        child: SvgPicture.asset(
          
          IconConstants.like,
        ),
      ),
    );
  }
}
