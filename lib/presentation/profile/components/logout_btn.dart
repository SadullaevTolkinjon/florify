import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';

class LogoutBtn extends StatelessWidget {
  const LogoutBtn({super.key, required this.ontap});
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.getH(context) * 0.020,
          vertical: AppSizes.getH(context) * 0.020),
      sliver: SliverToBoxAdapter(
        child: GestureDetector(
          onTap: () {
            ontap();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hisobdan chiqish",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontSize: AppSizes.getH(context) * 0.020,
                  color: ColorConstants.kRed,
                ),
              ),
              Container(
                height: AppSizes.getH(context) * 0.024,
                width: AppSizes.getH(context) * 0.024,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorConstants.kRed,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.close,
                  color: ColorConstants.kRed,
                  size: AppSizes.getH(context) * 0.018,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
