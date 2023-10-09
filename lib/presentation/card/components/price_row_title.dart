import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_sizes/app_sizes_const.dart';

class PriceRowTitle extends StatelessWidget {
  const PriceRowTitle(
      {super.key,
      required this.leftTitle,
      required this.rightTitle,
      this.fontWeight});
  final String rightTitle;
  final String leftTitle;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            leftTitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: AppSizes.getH(context) * 0.018,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: AutoSizeText(
            rightTitle,
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            group: AutoSizeGroup(),
            style: TextStyle(
              fontSize: AppSizes.getH(context) * 0.018,
              fontWeight: fontWeight ?? FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
