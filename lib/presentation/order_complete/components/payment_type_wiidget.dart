import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentTypeWidget extends StatelessWidget {
  const PaymentTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Text(
            "To'lov",
            style: TextStyle(
              fontSize: AppSizes.geth(context, 0.016),
            ),
          ),
          MyPadding(
            width: AppSizes.geth(context, 0.06),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(IconConstants.card_),
                MyPadding(
                  width: AppSizes.geth(context, 0.02),
                ),
                Text(
                  "8600 **** **** **12",
                  textAlign: TextAlign.right,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: AppSizes.geth(context, 0.016),
                      fontWeight: FontWeight.w500),
                ),
                MyPadding(
                  width: AppSizes.geth(context, 0.02),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: AppSizes.geth(context, 0.02),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
