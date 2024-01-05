import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/presentation/all_category_product/cubit/all_category_product_cubit.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/empty_widget.dart';
import 'package:florify/presentation/widgets/error_widget.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AllCategoryProductView extends StatefulWidget {
  const AllCategoryProductView({
    super.key,
    required this.categoryName,
    required this.id,
  });
  final String categoryName;
  final String id;

  @override
  State<AllCategoryProductView> createState() => _AllCategoryProductViewState();
}

class _AllCategoryProductViewState extends State<AllCategoryProductView> {
  final PagingController<int, Product?> _pagingController =
      PagingController(firstPageKey: 1);
  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<AllCategoryProductCubit>().fetch(pageKey, widget.id);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(widget.categoryName),
      ),
      body: BlocListener<AllCategoryProductCubit, AllCategoryProductState>(
        listener: (context, state) {
          if (state is AllCategoryProductBuildable) {
            if (state.nextPageKey != null) {
              _pagingController.appendPage(state.products!, state.nextPageKey);
            } else if (state.pagingError != null) {
              _pagingController.error = state.pagingError;
            } else if (state.nextPageKey == null) {
              _pagingController.nextPageKey = state.nextPageKey;
              _pagingController.appendLastPage(state.products!);
            }
          }
        },
        child: Buildable<AllCategoryProductCubit, AllCategoryProductState,
            AllCategoryProductBuildable>(
          properties: (buildable) => [
            buildable.likeIds,
            buildable.likes,
          ],
          builder: (context, state) {
            return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.geth(context, 0.014)),
                child: Column(children: [
                  MyPadding(height: AppSizes.geth(context, 0.02)),

                  Expanded(
                    child: PagedGridView<int, Product?>(
                      pagingController: _pagingController,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: AppSizes.getH(context) * 0.31,
                        crossAxisSpacing: AppSizes.geth(context, 0.01),
                        mainAxisSpacing: AppSizes.geth(context, 0.01),
                        // childAspectRatio: 0.7
                      ),
                      builderDelegate: PagedChildBuilderDelegate<Product?>(
                        firstPageProgressIndicatorBuilder: (context) =>
                            const LoaderWidget(),
                        newPageProgressIndicatorBuilder: (context) =>
                            const LoaderWidget(),
                        noItemsFoundIndicatorBuilder: (context) => EmptyWidget2(
                            ontap: () {}, title: state.data!.uz ?? ""),
                        itemBuilder: (context, item, index) => ProductContainer(
                          ontap: () async {
                            await Navigator.pushNamed(
                              context,
                              NavigatorConst.productDetails,
                              arguments: item.id,
                            ).then(
                              (value) {
                                BlocProvider.of<AllCategoryProductCubit>(
                                        context)
                                    .checkLikes();
                              },
                            );
                          },
                          product: item!,
                          likeBtn: () {
                            if (BlocProvider.of<AllCategoryProductCubit>(
                                        context)
                                    .getUser() !=
                                null) {
                              if (state.likeIds.contains(
                                item.id.toString(),
                              )) {
                                context.read<AllCategoryProductCubit>().disLike(
                                      item.id!,
                                    );
                              } else {
                                context
                                    .read<AllCategoryProductCubit>()
                                    .pressLike(item.id!);
                              }
                            }
                          },
                          isLike: state.likeIds.contains(
                            item.id.toString(),
                          )
                              ? true
                              : false,
                        ),
                      ),
                    ),
                  )
                  // state.data!.products!.isNotEmpty
                  //     ? SliverGrid(
                  //         delegate: SliverChildBuilderDelegate(
                  //           (context, index) => ProductContainer(
                  //             product: state.data!.products![index],
                  //             ontap: () async {
                  //               await Navigator.pushNamed(
                  //                 context,
                  //                 NavigatorConst.productDetails,
                  //                 arguments: state.data!.products![index].id,
                  //               ).then(
                  //                 (value) =>
                  //                     BlocProvider.of<AllCategoryProductCubit>(
                  //                             context)
                  //                         .checkLikes(),
                  //               );
                  //             },
                  //             likeBtn: () {
                  //               if (context
                  //                       .read<AllCategoryProductCubit>()
                  //                       .getUser() !=
                  //                   null) {
                  //                 state.likeIds.contains(state
                  //                         .data!.products![index].id
                  //                         .toString())
                  //                     ? context
                  //                         .read<AllCategoryProductCubit>()
                  //                         .disLike(
                  //                             state.data!.products![index].id!)
                  //                     : context
                  //                         .read<AllCategoryProductCubit>()
                  //                         .pressLike(
                  //                             state.data!.products![index].id!);
                  //               }
                  //             },
                  //             isLike: state.likeIds.contains(
                  //               state.data!.products![index].id.toString(),
                  //             )
                  //                 ? true
                  //                 : false,
                  //           ),
                  //           childCount: state.data!.products!.length,
                  //         ),
                  //         gridDelegate:
                  //             SliverGridDelegateWithFixedCrossAxisCount(
                  //           crossAxisCount: 2,
                  //           mainAxisExtent: AppSizes.getH(context) * 0.31,
                  //           crossAxisSpacing: 10,
                  //           mainAxisSpacing: 10,
                  //         ),
                  //       )
                  //     : SliverToBoxAdapter(
                  //         child: EmptyWidget2(
                  //           ontap: () {},
                  //           title: state.data!.uz ?? "",
                  //         ),
                  //       )],)

                  // CustomScrollView(
                  //   slivers: [
                  //     SliverToBoxAdapter(
                  //       child:,
                  //     ),

                  //   ],
                  // ),
                ]));
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
