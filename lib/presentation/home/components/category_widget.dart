import 'package:florify/presentation/widgets/category_product.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      sliver: SliverToBoxAdapter(
        child: Wrap(
          direction: Axis.horizontal,
          runSpacing: 8,
          spacing: 10,
          children: [
            ...List.generate(
              3,
              (index) => CategoryProduct(
                index: index,
              ),
            )
          ],
        ),
      ),
    );
  }
}
