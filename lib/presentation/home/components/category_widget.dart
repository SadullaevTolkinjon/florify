import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/presentation/widgets/category_product.dart';
import 'package:flutter/material.dart';

import '../../../constants/navigator/navigator_const.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.categories});
  final List<CategoryModel> categories;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      sliver: SliverToBoxAdapter(
        child: Wrap(
          direction: Axis.horizontal,
          runSpacing: AppSizes.geth(context, 0.008),
          spacing: AppSizes.geth(context, 0.01),
          children: [
            ...List.generate(
              categories.length > 3 ? 3 : categories.length,
              (index) => CategoryProduct(
                ontap: () {
                  Navigator.pushNamed(
                    context,
                    NavigatorConst.allCategoryProductsView,
                    arguments: [
                      categories[index].uz,
                      categories[index].id,
                    ],
                  );
                  
                },
                category: categories[index],
                index: index,
              ),
            )
          ],
        ),
      ),
    );
  }
}
