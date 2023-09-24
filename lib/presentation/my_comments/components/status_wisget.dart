import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
    required this.isAccepted,
  });
  final bool isAccepted;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
            isAccepted ? IconConstants.accept : IconConstants.reject),
        MyPadding(
          width: AppSizes.geth(context, 0.01),
        ),
        isAccepted
            ? Text(
                "Tasdiqlandi",
                style: TextStyle(
                    fontSize: AppSizes.geth(context, 0.016),
                    color: ColorConstants.green3),
              )
            : Text(
                "Rad etildi",
                style: TextStyle(
                    fontSize: AppSizes.geth(context, 0.016),
                    color: ColorConstants.kRed),
              )
      ],
    );
  }
}
