import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
          top: AppSizes.getH(context) * 0.024,
          left: AppSizes.getH(context) * 0.016,
          bottom: AppSizes.getH(context) * 0.024),
      sliver: SliverToBoxAdapter(
        child: Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: AppSizes.getH(context) * 0.019,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
