import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/images/images_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key, required this.ontap});
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            height: 200, width: 200, child: Image.asset(ImagesConst.emptyPng)),
        MyPadding(
          height: AppSizes.geth(context, 0.04),
        ),
        Text(
          "Savatcha bo'sh",
          style: TextStyle(
              fontSize: AppSizes.geth(context, 0.022),
              fontWeight: FontWeight.w600),
        ),
        MyPadding(
          height: AppSizes.geth(context, 0.02),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.geth(context, 0.05),
          ),
          child: Text(
            "Bosh sahifadagi to‘plamlardan yoki kerakli mahsulotni qidiruv orqali toping",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: AppSizes.geth(context, 0.016),
                fontWeight: FontWeight.w400),
          ),
        ),
        MyPadding(
          height: AppSizes.geth(context, 0.04),
        ),
        ElevatedBtnWidget(
          ontap: () {
            ontap();
          },
          height: AppSizes.geth(context, 0.06),
          width: AppSizes.geth(context, 0.16),
          color: ColorConstants.selectedNavBarColor,
          title: "Bosh sahifaga",
        )
      ],
    );
  }
}

class EmptyWidget2 extends StatelessWidget {
  const EmptyWidget2({super.key, required this.ontap});
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MyPadding(
          height: AppSizes.geth(context, 0.04),
        ),
        SizedBox(
            height: 200, width: 200, child: Image.asset(ImagesConst.emptyPng)),
        MyPadding(
          height: AppSizes.geth(context, 0.04),
        ),
        Text(
          "Kategoriya bo'sh",
          style: TextStyle(
              fontSize: AppSizes.geth(context, 0.022),
              fontWeight: FontWeight.w600),
        ),
        MyPadding(
          height: AppSizes.geth(context, 0.02),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.geth(context, 0.05),
          ),
          child: Text(
            "Bosh sahifadagi to‘plamlardan yoki kerakli mahsulotni qidiruv orqali toping",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: AppSizes.geth(context, 0.016),
                fontWeight: FontWeight.w400),
          ),
        ),
        MyPadding(
          height: AppSizes.geth(context, 0.04),
        ),
      ],
    );
  }
}
