import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class LoagoutWantBtn extends StatelessWidget {
  const LoagoutWantBtn({super.key,required this.ontap,required this.title});
final Function ontap;
final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        height: AppSizes.geth(context, 0.055),
        width:double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstants.black.withOpacity(0.1),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.geth(context, 0.014),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                MyPadding(
                  width: AppSizes.geth(context, 0.01),
                ),
                Text(
                 title,
                  style: TextStyle(
                      fontSize: AppSizes.getH(context) * 0.018,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
