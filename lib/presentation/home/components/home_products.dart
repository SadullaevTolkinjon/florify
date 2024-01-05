import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/category_pagination_model/category_pagination_model.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/presentation/widgets/empty_widget.dart';
import 'package:florify/presentation/widgets/error_widget.dart';
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
    required this.categoryName,
  });
  final List<String> likes;
  final String categoryId;
  final String categoryName;
  @override
  State<HomeProducts> createState() => _HomeProductsState();
}

class _HomeProductsState extends State<HomeProducts>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  final PagingController<int, Product?> _pagingController =
      PagingController(firstPageKey: 1);
  late String _previousCategoryId;
  @override
  void initState() {
    _previousCategoryId = widget.categoryId;
    _pagingController.addPageRequestListener((pageKey) {
      context.read<HomeCubit>().fetch(pageKey, widget.categoryId); // F
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant HomeProducts oldWidget) {
      super.didUpdateWidget(oldWidget);
    if (_previousCategoryId != widget.categoryId) {
      _previousCategoryId = widget.categoryId;
      _pagingController.itemList = []; // Clear previous data=
      context.read<HomeCubit>().fetch(
          1, widget.categoryId); // Fetch new data based on the new category
    }

  
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeBuildableState) {
          if (state.nextPageKey != null) {
            _pagingController.appendPage(state.products!, state.nextPageKey);
          } else if (state.pagingError != null) {
            _pagingController.error = state.pagingError;
          } else if (state.nextPageKey == null) {
            // _pagingController.nextPageKey = state.nextPageKey;
            _pagingController.appendLastPage(state.products!);
          }
        }
      },
      child: PagedSliverGrid<int, Product?>(
        pagingController: _pagingController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: AppSizes.getH(context) * 0.31,
          crossAxisSpacing: AppSizes.geth(context, 0.01),
          mainAxisSpacing: AppSizes.geth(context, 0.01),
          // childAspectRatio: 0.7
        ),
        builderDelegate: PagedChildBuilderDelegate<Product?>(
          firstPageProgressIndicatorBuilder: (context) => const LoaderWidget(),
          newPageProgressIndicatorBuilder: (context) => const LoaderWidget(),
          noItemsFoundIndicatorBuilder: (context) => EmptyWidget2(
            ontap: () {},
            title: widget.categoryName,
          ),
          firstPageErrorIndicatorBuilder: (context) => ErrorWidgetCustom(
            ontap: () {
              _pagingController.refresh();
            },
          ),
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
