import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/presentation/widgets/empty_widget.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:florify/presentation/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeProducts extends StatefulWidget {
  const HomeProducts({
    super.key,
    required this.likes,
    required this.categoryId,
  });
  final List<String> likes;
  final String categoryId;
  @override
  State<HomeProducts> createState() => _HomeProductsState();
}

class _HomeProductsState extends State<HomeProducts> {
  final PagingController<int, Product?> _pagingController =
      PagingController(firstPageKey: 1);
  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<HomeCubit>().fetch(pageKey, widget.categoryId);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeBuildableState) {
          if (state.nextPageKey == null) {
            _pagingController.error = state.pagingError;
          } else {
            _pagingController.nextPageKey = state.nextPageKey;
            _pagingController.appendPage(state.products!, state.nextPageKey);
          }
        }
      },
      child: PagedSliverGrid<int, Product?>(
        pagingController: _pagingController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: AppSizes.getH(context) * 0.31,
          crossAxisSpacing: AppSizes.geth(context, 0.01),
          mainAxisSpacing: AppSizes.geth(context, 0.01,),
         // childAspectRatio: 0.7
        ),
        builderDelegate: PagedChildBuilderDelegate<Product?>(
          firstPageProgressIndicatorBuilder: (context) => const LoaderWidget(),
          newPageProgressIndicatorBuilder: (context) => const LoaderWidget(),
          itemBuilder: (context, item, index) => ProductContainer(
            ontap: () async {
              await Navigator.pushNamed(
                context,
                NavigatorConst.productDetails,
                arguments: item.id,
              ).then(
                (value) {
                  BlocProvider.of<HomeCubit>(context).checkLikes();
                },
              );
            },
            product: item!,
            likeBtn: () {
              if (BlocProvider.of<HomeCubit>(context).getUser() != null) {
                if (widget.likes.contains(
                  item.id.toString(),
                )) {
                  context.read<HomeCubit>().disLike(
                        item.id!,
                      );
                } else {
                  context.read<HomeCubit>().pressLike(item.id!);
                }
              }
            },
            isLike: widget.likes.contains(
              item.id.toString(),
            )
                ? true
                : false,
          ),
        ),
      ),
    );

    // widget.categories[widget.selectedCategory].products!.isNotEmpty
    //     ? SliverGrid(
    //         delegate: SliverChildBuilderDelegate(
    //           (context, index) => ProductContainer(
    //               ontap: () async {
    //                 await Navigator.pushNamed(
    //                   context,
    //                   NavigatorConst.productDetails,
    //                   arguments: widget.categories[widget.selectedCategory]
    //                       .products![index].id,
    //                 ).then(
    //                   (value) =>
    //                       BlocProvider.of<HomeCubit>(context).checkLikes(),
    //                 );
    //               },
    //               product: widget
    //                   .categories[widget.selectedCategory].products![index],
    //               likeBtn: () {
    //                 if (BlocProvider.of<HomeCubit>(context).getUser() != null) {
    //                   widget.likes.contains(
    //                     widget.categories[widget.selectedCategory]
    //                         .products![index].id
    //                         .toString(),
    //                   )
    //                       ? context.read<HomeCubit>().disLike(
    //                             widget.categories[widget.selectedCategory]
    //                                 .products![index].id!,
    //                           )
    //                       : context.read<HomeCubit>().pressLike(widget
    //                           .categories[widget.selectedCategory]
    //                           .products![index]
    //                           .id!);
    //                 }
    //               },
    //               isLike: widget.likes.contains(
    //                 widget
    //                     .categories[widget.selectedCategory].products![index].id
    //                     .toString(),
    //               )
    //                   ? true
    //                   : false),
    //           childCount:
    //               widget.categories[widget.selectedCategory].products!.length,
    //         ),
    //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //           crossAxisCount: 2,
    //           mainAxisExtent: AppSizes.getH(context) * 0.31,
    //           crossAxisSpacing: AppSizes.geth(context, 0.01),
    //           mainAxisSpacing: AppSizes.geth(context, 0.01),
    //         ),
    //       )
    //     : SliverToBoxAdapter(
    //         child: EmptyWidget2(
    //           ontap: () {},
    //         ),
    //       );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
