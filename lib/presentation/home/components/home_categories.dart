import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/presentation/widgets/categories_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key, required this.categories,required this.selectedCategory});
  final List<CategoryModel> categories;
  final int selectedCategory;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              categories.length,
              (index) => CategoriesBtn(
                title: categories[index].uz ?? "",
                isSelected: selectedCategory == index ? true : false,
                ontap: () {
                  context.read<HomeCubit>().selectCategory(index);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
