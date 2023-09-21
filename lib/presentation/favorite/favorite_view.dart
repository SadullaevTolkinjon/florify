import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/presentation/favorite/components/store_container.dart';
import 'package:florify/presentation/favorite/cubit/favorite_cubit.dart';
import 'package:florify/presentation/product_details/components/desc_title_btn.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/like_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_sizes/app_sizes_const.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Buildable<FavoriteCubit, FavoriteState, FavoriteBuildable>(
      properties: (buildable) => [
        buildable.error,
        buildable.failed,
        buildable.loading,
        buildable.selectedTab,
        buildable.success
      ],
      builder: (context, state) {
        return CustomScrollView(
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
                            isSelected: state.selectedTab == 0 ? true : false,
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
                            isSelected: state.selectedTab == 1 ? true : false,
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
                ? SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => ProductContainer(
                        ontap: () {},
                      ),
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: AppSizes.getH(context) * 0.285,
                    ),
                  )
                : SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => const StoreContainer(),
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: AppSizes.getH(context) * 0.285,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                  )
          ],
        );
      },
    );
  }
}
