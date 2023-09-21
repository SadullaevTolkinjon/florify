

import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Promokod_container extends StatelessWidget {
  const Promokod_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: AppSizes.getH(context) * 0.24,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: AppSizes.geth(context, 0.016),
            vertical: AppSizes.geth(context, 0.024)),
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstants.black.withOpacity(0.1),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(AppSizes.getH(context) * 0.008),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sizning promokodingiz",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: AppSizes.geth(context, 0.016),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  MyPadding(
                    height: AppSizes.geth(context, 0.01),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "XV99R9K",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: AppSizes.geth(context, 0.022),
                            fontWeight: FontWeight.w600,
                            color: ColorConstants.green3
                          ),
                        ),
                      ),
                      MyPadding(
                          width: AppSizes.getw(context, 0.008)),
                      GestureDetector(
                        child: const Icon(Icons.more_vert),
                        onTap: () {},
                      )
                    ],
                  )
                ],
              ),
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.015),
            ),
            Text(
              "Ushbu promokod 200 000 so‘mdan ortiq savdo uchun 50 000 so‘m chegirma hisoblanadi. va albatta bu sizga yordam beradi",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: AppSizes.geth(context, 0.016),
                fontWeight: FontWeight.w400,
              ),
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.015),
            ),
            Text(
              "31 - dekabr 2024, 23:59 gacha amal qiladi",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: AppSizes.geth(context, 0.016),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
