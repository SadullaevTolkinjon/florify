import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

import '../../../constants/color/color_const.dart';

class ProfileBtn extends StatelessWidget {
  const ProfileBtn({
    super.key,
    required this.ontap,
    required this.title,
    required this.isBorderable,
  });
  final Function ontap;
  final String title;
  final bool isBorderable;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () {
          ontap();
        },
        child: Padding(
          padding: EdgeInsets.only(
              left: AppSizes.getH(context) * 0.020,
              right: AppSizes.getH(context) * 0.020,
              top: AppSizes.getH(context) * 0.024),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 9,
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: AppSizes.getH(context) * 0.020,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: AppSizes.getH(context) * 0.022,
                      color: ColorConstants.black.withOpacity(0.5),
                    ),
                  )
                ],
              ),
              MyPadding(
                height: AppSizes.getH(context) * 0.020,
              ),
              isBorderable
                  ? const Divider(
                      height: 0,
                      thickness: 1,
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
