import 'package:expandable_text/expandable_text.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:florify/presentation/product_details/components/comments_widget.dart';
import 'package:florify/presentation/product_details/components/desc_title_btn.dart';
import 'package:florify/presentation/product_details/cubit/details_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_sizes/app_sizes_const.dart';

class DiscriptionWidget extends StatelessWidget {
  const DiscriptionWidget({super.key, required this.product});
  final ProductDetailModel product;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<DetailsCubit>(),
      child: BlocListener<DetailsCubit, DetailsState>(
        listener: (context, state) {},
        child: Buildable<DetailsCubit, DetailsState, DetailsBuildable>(
          properties: (buildable) => [
            buildable.selectedTab,
          ],
          builder: (context, state) {
            return SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.getH(context) * 0.024,
              ),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: CommentsTitleBtn(
                            ontap: () {
                              BlocProvider.of<DetailsCubit>(context)
                                  .selectTabs(0);
                            },
                            title: "Mahsulot Tavfsifi",
                            isSelected: state.selectedTab == 0 ? true : false,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: CommentsTitleBtn(
                            ontap: () {
                              BlocProvider.of<DetailsCubit>(context)
                                  .selectTabs(1);
                            },
                            title: "Sharhlar",
                            isSelected: state.selectedTab == 1 ? true : false,
                          ),
                        ),
                      ],
                    ),
                    MyPadding(
                      height: AppSizes.getH(context) * 0.016,
                    ),
                    state.selectedTab == 0
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ExpandableText(
                                product.description ?? "",
                                expandText: 'batafsil',
                                collapseText: 'kamroq',
                                maxLines: 4,
                                linkColor: ColorConstants.blue100,
                              ),
                              MyPadding(
                                height: AppSizes.getH(context) * 0.024,
                              ),
                              const Divider(
                                height: 0,
                                thickness: 0.5,
                              )
                            ],
                          )
                        : const CommentsWidget()
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
