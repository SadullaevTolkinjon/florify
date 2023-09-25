import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';

class TitleOnboarding extends StatelessWidget {
   TitleOnboarding({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: AppSizes.geth(context, 0.2),
      right: AppSizes.geth(context, 0.02),
      left: AppSizes.geth(context, 0.02),
      child: Text(
        words[currentIndex],
        style: TextStyle(
            color: ColorConstants.white,
            fontSize: AppSizes.geth(context, 0.02),
            fontWeight: FontWeight.w500),
      ),
    );
  }

  List words = [
    "Bizning do'konimizda eng zamonaviy gul xilma-xil turlari mavjud. Siz o'zingizga yoqgan gullarni topasiz.",
    "Bizning tez yetkazib berish xizmatimiz sizning buyurtmangizni yaxshi vaqtida qabul qilish vaqtini ta'minlaydi.",
    "Biz bilan hamkorlik qiling. Mahsulotlaringizni biz bilan soting"
  ];
}
