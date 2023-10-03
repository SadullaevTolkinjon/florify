import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChangeLocationWidget extends StatelessWidget {
  const ChangeLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Yetkazib berish manzili",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: AppSizes.geth(context, 0.018),
                      fontWeight: FontWeight.w400),
                ),
                MyPadding(
                  height: AppSizes.geth(context, 0.016),
                ),
                Row(
                  children: [
                    SvgPicture.asset(IconConstants.location),
                    MyPadding(
                      width: AppSizes.geth(context, 0.01),
                    ),
                    Expanded(
                      child: Text(
                        "Toshkent sh, Shayhontohur t, Labzak m, 49-uy, 12345",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: AppSizes.geth(context, 0.018),
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                MyPadding(
                  height: AppSizes.geth(context, 0.02),
                ),
                ElevatedBtnWidget(
                  ontap: () {},
                  height: AppSizes.geth(context, 0.06),
                  width: double.infinity,
                  color: ColorConstants.kgrey,
                  title: "O'zgartirish",
                  titleColor: ColorConstants.black,
                )
              ],
            ),
          );
  }
}