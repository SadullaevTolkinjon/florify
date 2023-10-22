import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/presentation/widgets/empty_widget.dart';
import 'package:florify/presentation/widgets/product_container.dart';
import 'package:flutter/material.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts(
      {super.key, required this.categories, required this.selectedCategory});
  final List<CategoryModel> categories;
  final int selectedCategory;
  @override
  Widget build(BuildContext context) {
    return categories[selectedCategory].product!.isNotEmpty
        ? SliverGrid(
            delegate: SliverChildBuilderDelegate(
                (context, index) => ProductContainer(
                      ontap: () {
                        Navigator.pushNamed(
                          context,
                          NavigatorConst.productDetails,
                          arguments:
                              categories[selectedCategory].product![index].id,
                        );
                      },
                      product: categories[selectedCategory].product![index],
                    ),
                childCount: categories[selectedCategory].product!.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: AppSizes.getH(context) * 0.31,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          )
        : SliverToBoxAdapter(
            child: EmptyWidget2(ontap: () {}),
          );
  }
}
