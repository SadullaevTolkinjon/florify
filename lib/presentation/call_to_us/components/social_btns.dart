import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialBtn extends StatelessWidget {
  const SocialBtn(
      {super.key,
      required this.ontap,
      required this.title,
      required this.iconPath});
  final Function ontap;
  final String title;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: SizedBox(
        height: AppSizes.geth(context, 0.07),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SvgPicture.asset(iconPath),
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.008),
            ),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: AppSizes.geth(context, 0.012),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
