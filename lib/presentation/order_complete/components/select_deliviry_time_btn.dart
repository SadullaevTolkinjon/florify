import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectDeliveryTimeBtn extends StatelessWidget {
  const SelectDeliveryTimeBtn(
      {super.key,
      required this.onTap,
      required this.isSelected,
      required this.withCash,
      required this.subtitle,
      required this.title});
  final Function onTap;
  final bool isSelected;
  final bool withCash;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: AppSizes.geth(context, 0.11),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: isSelected ? ColorConstants.white : ColorConstants.kgrey,
          border: Border.all(
            color: isSelected
                ? ColorConstants.black.withOpacity(0.5)
                : ColorConstants.white,
          ),
        ),
        padding: EdgeInsets.all(
          AppSizes.geth(context, 0.016),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: AppSizes.geth(context, 0.016),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                isSelected == true
                    ? Container(
                        height: AppSizes.geth(context, 0.024),
                        width: AppSizes.geth(context, 0.024),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstants.selectedNavBarColor,
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.check,
                          color: ColorConstants.white,
                          size: AppSizes.geth(context, 0.02),
                        ),
                      )
                    : SvgPicture.asset(
                        IconConstants.no_check,
                      )
              ],
            ),
            Text(
              subtitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: AppSizes.geth(context, 0.014),
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            withCash == true
                ? Text(
                    "30 000 so'm",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: AppSizes.geth(context, 0.018),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
