import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/images/images_const.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class ErrorWidgetCustom extends StatelessWidget {
  const ErrorWidgetCustom({super.key, required this.ontap});
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.geth(context, 0.05)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(ImagesConst.no_internet),
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.02),
          ),
          Text(
            "Internetga ulanish mavjud emas",
            style: TextStyle(
                fontSize: AppSizes.geth(context, 0.02),
                fontWeight: FontWeight.w600),
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.02),
          ),
          Text(
            "Wi-Fi yoki mobil tarmoqqa ulanishni tekshiring va qaytadan urining.!",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: AppSizes.geth(context, 0.016),
                fontWeight: FontWeight.w400),
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.04),
          ),
          ElevatedBtnWidget(
              ontap: () {
                ontap();
              },
              height: AppSizes.geth(context, 0.055),
              width: AppSizes.geth(context, 0.15),
              color: ColorConstants.selectedNavBarColor,
              title: "Qayta urinish")
        ],
      ),
    );
  }
}
