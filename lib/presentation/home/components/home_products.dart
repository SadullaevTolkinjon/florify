import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/widgets/product_container.dart';
import 'package:flutter/material.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ProductContainer(
                ontap: () {
                  Navigator.pushNamed(context, NavigatorConst.productDetails);
                },
              ),
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: AppSizes.getH(context) * 0.31,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          );
  }
}