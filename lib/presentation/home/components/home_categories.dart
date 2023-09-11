import 'package:florify/presentation/widgets/categories_btn.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              3,
              (index) => CategoriesBtn(
                isSelected: index == 0 ? true : false,
                ontap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
