import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/domain/model/card_product_model/card_product_model.dart';
import 'package:florify/presentation/card/components/korzina_product_container.dart';
import 'package:florify/presentation/card/cubit/card_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KorzinaProductsWidget extends StatelessWidget {
  const KorzinaProductsWidget({super.key, required this.products});
  final List<CardProduct> products;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
          top: AppSizes.getH(context) * 0.02,
          right: AppSizes.getH(context) * 0.020,
          left: AppSizes.getH(context) * 0.020),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          childCount: products.length,
          (context, index) => KorzinaProducts(
            product: products[index],
            incrementBtn: () {
              BlocProvider.of<CardCubit>(context).increment(index);
            },
            decrementBtn: () {
               BlocProvider.of<CardCubit>(context).decrement(index);
            },
            deleteBtn: () {
              BlocProvider.of<CardCubit>(context)
                  .deleteProduct(products[index].id!);
            },
          ),
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
