import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

import '../../../constants/color/color_const.dart';

class CommentsTitleBtn extends StatelessWidget {
  const CommentsTitleBtn(
      {super.key,
      required this.isSelected,
      required this.ontap,
      required this.title});
  final bool isSelected;
  final Function ontap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: AppSizes.getH(context) * 0.020,
                color:
                    isSelected ? ColorConstants.blue100 : ColorConstants.black1,
              ),
            ),
            MyPadding(
              height: AppSizes.getH(context) * 0.008,
            ),
            Container(
              width: double.infinity,
              height: AppSizes.getH(context) * 0.002,
              color: isSelected
                  ? ColorConstants.blue100
                  : ColorConstants.black.withOpacity(0.1),
            ),
          ],
        ),
      ),
    );
  }
}
