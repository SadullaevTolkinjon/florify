import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:flutter/material.dart';

class PromokodFloatingBtn extends StatelessWidget {
  const PromokodFloatingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: AppSizes.getH(context) * 0.020,
        left: AppSizes.getH(context) * 0.020,
        top: AppSizes.getH(context) * 0.010,
        bottom: AppSizes.getH(context) * 0.014,
      ),
      child: ElevatedBtnWidget(
        ontap: () {
          Navigator.pushNamed(context, NavigatorConst.promokodAddPage);
        },
        height: double.infinity,
        width: double.infinity,
        color: ColorConstants.selectedNavBarColor,
        widget: Icon(
          Icons.add,
          color: ColorConstants.white,
          size: AppSizes.getH(context) * 0.018,
        ),
        title: "Promokod qo'shish",
      ),
    );
  }
}
