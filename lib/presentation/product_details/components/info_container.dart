

import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoDetailsContainer extends StatelessWidget {
  const InfoDetailsContainer({
    super.key,
    required this.count,
    required this.iconPath,
    required this.title,
  });
  final String iconPath;
  final String title;
  final String count;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.getH(context) * 0.14,
      width: AppSizes.getW(context) * 0.2,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: ColorConstants.black.withOpacity(
            0.1,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.getH(context) * 0.006,
          vertical: AppSizes.getH(context) * 0.004),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(iconPath),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: AppSizes.getH(context) * 0.014,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "$count ta",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: AppSizes.getH(context) * 0.016,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
