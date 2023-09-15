import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/icons/icon_constants.dart';
import '../../widgets/elevated_btn.dart';

class HomeFloatingBtn extends StatelessWidget {
  const HomeFloatingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.getH(context) * 0.020,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.getH(context) * 0.020,
            vertical: AppSizes.getH(context) * 0.022,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Narxi",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: AppSizes.getH(context) * 0.012,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    MyPadding(
                      height: AppSizes.getH(context) * 0.004,
                    ),
                    Text(
                      "999999 so'm",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: AppSizes.getH(context) * 0.018,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: ElevatedBtnWidget(
                  ontap: () {},
                  height: double.infinity,
                  width: double.infinity,
                  color: ColorConstants.bascetColor,
                  title: "Savatga qo'shish",
                  widget: SvgPicture.asset(
                    IconConstants.bag_white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
