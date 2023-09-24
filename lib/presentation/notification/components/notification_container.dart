

import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/images/images_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_sizes/app_sizes_const.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.black.withOpacity(0.1)),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.geth(context, 0.016),
          vertical: AppSizes.geth(context, 0.02),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: AppSizes.geth(context, 0.012),
                  height: AppSizes.geth(context, 0.012),
                  child: SvgPicture.asset(
                    ImagesConst.logo,
                    color: ColorConstants.selectedNavBarColor,
                  ),
                ),
                MyPadding(
                  width: AppSizes.geth(context, 0.004),
                ),
                Text(
                  "florify",
                  style: TextStyle(
                    fontSize: AppSizes.geth(context, 0.016),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                  child: Text(
                    "28.08.2023  00:00",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: AppSizes.geth(context, 0.016),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.016),
            ),
            Text(
              "Yana bir qadam - va mahsulotlar sizniki!",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: AppSizes.geth(context, 0.016),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
