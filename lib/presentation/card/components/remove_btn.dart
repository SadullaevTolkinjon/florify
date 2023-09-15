import 'package:florify/constants/icons/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RemoveBtn extends StatelessWidget {
  const RemoveBtn({super.key, required this.ontap});
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: SvgPicture.asset(
        IconConstants.close,
      ),
    );
  }
}
