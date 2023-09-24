import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';

class AddPictureWidget extends StatelessWidget {
  const AddPictureWidget({
    super.key,
    required this.ontap,
  });
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: CircleAvatar(
        backgroundColor: ColorConstants.kgrey,
        radius: AppSizes.geth(context, 0.02),
        child: Icon(
          Icons.add,
          color: ColorConstants.black,
        ),
      ),
    );
  }
}
