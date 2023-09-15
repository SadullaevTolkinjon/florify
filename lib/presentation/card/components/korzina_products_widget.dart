import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/presentation/card/components/korzina_product_container.dart';
import 'package:flutter/material.dart';

class KorzinaProductsWidget extends StatelessWidget {
  const KorzinaProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
          top: AppSizes.getH(context) * 0.02,
          right: AppSizes.getH(context) * 0.020,
          left: AppSizes.getH(context) * 0.020),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          childCount: 3,
          (context, index) => const KorzinaProducts(),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: AppSizes.getH(context) * 0.130,
          mainAxisSpacing: AppSizes.getH(context) * 0.024,
          crossAxisSpacing: 8,
        ),
      ),
    );
  }
}
