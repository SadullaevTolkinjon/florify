
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart' as badges;
class NotificationBtn extends StatelessWidget {
  const NotificationBtn({super.key, required this.ontap});
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Align(
        alignment: Alignment.center,
        child: badges.Badge(
          badgeContent: Text(
            "2",
            style: TextStyle(
              color: ColorConstants.white,
            ),
          ),
          child: SvgPicture.asset(
            IconConstants.notification,
          ),
        ),
      ),
    );
  }
}
