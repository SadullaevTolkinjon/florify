import 'package:florify/di/injection.dart';
import 'package:florify/presentation/all_category_product/all_category_profuct_view.dart';
import 'package:florify/presentation/all_category_product/cubit/all_category_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllCategoryProductPage extends StatelessWidget {
  const AllCategoryProductPage({
    super.key,
    required this.categorydata,
  });
  final List categorydata;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = locator<AllCategoryProductCubit>();
        cubit.fetchProducts(categorydata[1]);
        return cubit;
      },
      child: AllCategoryProductView(
        categoryName: categorydata[0],
        id: categorydata[1],
      ),
    );
  }
}
