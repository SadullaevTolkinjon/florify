import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/favorite/favorite_model.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/presentation/widgets/empty_widget.dart';
import 'package:florify/presentation/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts(
      {super.key,
      required this.categories,
      required this.selectedCategory,
      required this.likes});
  final List<CategoryModel> categories;
  final int selectedCategory;
  final List<String> likes;
  @override
  Widget build(BuildContext context) {
    return categories[selectedCategory].product!.isNotEmpty
        ? SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ProductContainer(
                  ontap: () async {
                    await Navigator.pushNamed(
                      context,
                      NavigatorConst.productDetails,
                      arguments:
                          categories[selectedCategory].product![index].id,
                    ).then(
                      (value) =>
                          BlocProvider.of<HomeCubit>(context).checkLikes(),
                    );
                  },
                  product: categories[selectedCategory].product![index],
                  likeBtn: () {
                    if (BlocProvider.of<HomeCubit>(context).getUser() != null) {
                      likes.contains(
                        categories[selectedCategory]
                            .product![index]
                            .id
                            .toString(),
                      )
                          ? context.read<HomeCubit>().disLike(
                                categories[selectedCategory]
                                    .product![index]
                                    .id!,
                              )
                          : context.read<HomeCubit>().pressLike(
                              categories[selectedCategory].product![index].id!);
                    }
                  },
                  isLike: likes.contains(
                    categories[selectedCategory].product![index].id.toString(),
                  )
                      ? true
                      : false),
              childCount: categories[selectedCategory].product!.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: AppSizes.getH(context) * 0.31,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          )
        : SliverToBoxAdapter(
            child: EmptyWidget2(
              ontap: () {},
            ),
          );
  }
}
