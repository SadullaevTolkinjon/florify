import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/domain/model/favorite/favorite_model.dart';
import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:florify/presentation/favorite/components/favorite_porduct_container.dart';
import 'package:florify/presentation/favorite/components/store_container.dart';
import 'package:florify/presentation/favorite/cubit/favorite_cubit.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/presentation/product_details/components/desc_title_btn.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/empty_widget.dart';
import 'package:florify/presentation/widgets/error_widget.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/app_sizes/app_sizes_const.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoriteCubit, FavoriteState>(
      listener: (context, state) {},
      child: Buildable<FavoriteCubit, FavoriteState, FavoriteBuildable>(
        properties: (buildable) => [
          buildable.likes,
          buildable.error,
          buildable.failed,
          buildable.loading,
          buildable.selectedTab,
          buildable.success,
          buildable.likeIds,
        ],
        builder: (context, state) {
          if (state.loading) {
            return const LoaderWidget();
          }
          if (state.failed) {
            return ErrorWidgetCustom(
              ontap: () {
                context.read<FavoriteCubit>().fetchLikes();
              },
            );
          }
          return context.read<FavoriteCubit>().getUser() != null
              ? CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.getH(context) * 0.024,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: CommentsTitleBtn(
                                    ontap: () {
                                      BlocProvider.of<FavoriteCubit>(context)
                                          .changeTabs(0);
                                    },
                                    title: "Mening yoqtirganlarim",
                                    isSelected:
                                        state.selectedTab == 0 ? true : false,
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: CommentsTitleBtn(
                                    ontap: () {
                                      BlocProvider.of<FavoriteCubit>(context)
                                          .changeTabs(1);
                                    },
                                    title: "Sevimli Do'konlar",
                                    isSelected:
                                        state.selectedTab == 1 ? true : false,
                                  ),
                                ),
                              ],
                            ),
                            MyPadding(
                              height: AppSizes.getH(context) * 0.016,
                            ),
                          ],
                        ),
                      ),
                    ),
                    state.selectedTab == 0
                        ? state.likes.isNotEmpty
                            ? SliverPadding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppSizes.geth(context, 0.016)),
                                sliver: SliverGrid(
                                  delegate: SliverChildBuilderDelegate(
                                    (context, index) =>
                                        FavoriteProductContainer(
                                      product: state.likes[index],
                                      likeBtn: () {
                                        BlocProvider.of<FavoriteCubit>(context)
                                            .disLike(
                                                state.likes[index].product_id!);
                                      },
                                      ontap: () async {
                                        await Navigator.pushNamed(
                                          context,
                                          NavigatorConst.productDetails,
                                          arguments: state.likes[index].product_id!,
                                        ).then(
                                          (value) =>
                                                BlocProvider.of<FavoriteCubit>(context).fetchLikes2(),
                                        );
                                      },
                                    ),
                                    childCount: state.likes.length,
                                  ),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent:
                                        AppSizes.getH(context) * 0.285,
                                  ),
                                ),
                              )
                            : SliverToBoxAdapter(
                                child: EmptyFavoriteProduct(ontap: () {
                                  BlocProvider.of<HomeCubit>(context)
                                      .changeTabs(0);
                                }),
                              )
                        : SliverPadding(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppSizes.geth(context, 0.016)),
                            sliver: SliverGrid(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) => const StoreContainer(
                                  store: Salesman(),
                                ),
                              ),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisExtent: AppSizes.getH(context) * 0.285,
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                              ),
                            ),
                          )
                  ],
                )
              : LoginErrorWidgetCustom(
                  ontap: () {
                    Navigator.pushNamed(
                      context,
                      NavigatorConst.sign_up_page,
                    );
                  },
                );
        },
      ),
    );

    // ValueListenableBuilder<List<FavoriteModel>>(
    //   valueListenable: BlocProvider.of<FavoriteCubit>(context).favoriteNotifier,
    //   builder: (context, value, child) {

    //     return CustomScrollView(
    //       slivers: [
    //         SliverPadding(
    //           padding: EdgeInsets.symmetric(
    //             horizontal: AppSizes.getH(context) * 0.024,
    //           ),
    //           sliver: SliverToBoxAdapter(
    //             child: Column(
    //               children: [
    //                 Row(
    //                   children: [
    //                     Expanded(
    //                       flex: 6,
    //                       child: CommentsTitleBtn(
    //                           ontap: () {
    //                             BlocProvider.of<FavoriteCubit>(context)
    //                                 .changeTabs(0);
    //                           },
    //                           title: "Mening yoqtirganlarim",
    //                           isSelected:

    //                               // state.selectedTab == 0
    //                               //     ?
    //                               true
    //                           //  : false,
    //                           ),
    //                     ),
    //                     Expanded(
    //                       flex: 5,
    //                       child: CommentsTitleBtn(
    //                         ontap: () {
    //                           // BlocProvider.of<FavoriteCubit>(
    //                           //         context)
    //                           //     .changeTabs(1);
    //                         },
    //                         title: "Sevimli Do'konlar",
    //                         isSelected:
    //                             // state.selectedTab == 1
    //                             //    ? true
    //                             //   :
    //                             false,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 MyPadding(
    //                   height: AppSizes.getH(context) * 0.016,
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //         // state.selectedTab == 0
    //         //     ?

    //         value.isNotEmpty
    //             ? SliverPadding(
    //                 padding: EdgeInsets.symmetric(
    //                     horizontal: AppSizes.geth(context, 0.016)),
    //                 sliver: SliverGrid(
    //                   delegate: SliverChildBuilderDelegate(
    //                     (context, index) => FavoriteProductContainer(
    //                       product: value[index],
    //                       likeBtn: () {},
    //                       ontap: () {
    //                         BlocProvider.of<FavoriteCubit>(context)
    //                             .disLike(value[index].product_id!);
    //                       },
    //                     ),
    //                     childCount: value.length,
    //                   ),
    //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //                     crossAxisCount: 2,
    //                     mainAxisExtent: AppSizes.getH(context) * 0.285,
    //                   ),
    //                 ),
    //               )
    //             : SliverToBoxAdapter(
    //                 child: EmptyFavoriteProduct(ontap: () {
    //                   BlocProvider.of<HomeCubit>(context).changeTabs(0);
    //                 }),
    //               )
    //         // : SliverPadding(
    //         //     padding: EdgeInsets.symmetric(
    //         //         horizontal: AppSizes.geth(context, 0.016)),
    //         //     sliver: SliverGrid(
    //         //       delegate: SliverChildBuilderDelegate(
    //         //         (context, index) => const StoreContainer(
    //         //           store: Salesman(),
    //         //         ),
    //         //       ),
    //         //       gridDelegate:
    //         //           SliverGridDelegateWithFixedCrossAxisCount(
    //         //         crossAxisCount: 1,
    //         //         mainAxisExtent:
    //         //             AppSizes.getH(context) * 0.285,
    //         //         mainAxisSpacing: 8,
    //         //         crossAxisSpacing: 8,
    //         //       ),
    //         //     ),
    //         //   )
    //       ],
    //     );
    //   },
    // );

    ;
  }
}
