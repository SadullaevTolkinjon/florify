import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:flutter/material.dart';

class ShopNameTitle extends StatelessWidget {
  const ShopNameTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.getH(context) * 0.016,
                vertical: AppSizes.getH(context) * 0.024,
              ),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Do'kon nomi",
                  style: TextStyle(
                    fontSize: AppSizes.getH(context) * 0.018,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
  }
}