import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:florify/constants/api/api_constants.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/data/local/permanent_db.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:florify/presentation/product_details/cubit/details_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/custom_icon_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:injectable/injectable.dart';

import '../../../constants/color/color_const.dart';

class ProductDetailsAppbar extends StatelessWidget {
  const ProductDetailsAppbar(
      {super.key, required this.product, required this.likeIds});
  final ProductDetailModel product;
  final List<String> likeIds;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit =locator<DetailsCubit>();
        cubit.checkLikes();
        return cubit;
      },
      child: BlocListener<DetailsCubit, DetailsState>(
        listener: (context, state) {},
        child: Buildable<DetailsCubit, DetailsState, DetailsBuildable>(
          properties: (buildable) =>
              [buildable.currentIndex, buildable.likeIds],
          builder: (context, state) {
            return SliverToBoxAdapter(
              child: SizedBox(
                height: AppSizes.getH(context) * 0.40,
                width: double.infinity,
                child: Stack(
                  children: [
                    // PageView.builder(
                    //   itemBuilder: (context, index) => SizedBox(
                    //     height: double.infinity,
                    //     width: double.infinity,
                    //     child: CachedNetworkImage(
                    //       fit: BoxFit.cover,
                    //       imageUrl:
                    //           "${ApiConstants.baseUrl}${product.images![index].image}",
                    //     ),
                    //   ),
                    //   itemCount: product.images!.length,
                    //   onPageChanged: (index) {
                    //     BlocProvider.of<DetailsCubit>(context)
                    //         .changeImages(index);
                    //   },
                    // ),
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.getW(context) * 0.016,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomIconBtn(
                              ontap: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: ColorConstants.white,
                              ),
                            ),
                            Row(
                              children: [
                                CustomIconBtn(
                                  ontap: () {
                                    if (context
                                            .read<DetailsCubit>()
                                            .getUser() !=
                                        null) {
                                      state.likeIds
                                              .contains(product.id.toString())
                                          ? context
                                              .read<DetailsCubit>()
                                              .disLike(product.id!)
                                          : context
                                              .read<DetailsCubit>()
                                              .pressLike(product.id!);
                                    }
                                  },
                                  icon: state.likeIds
                                          .contains(product.id.toString())
                                      ? Icon(
                                          Icons.favorite,
                                          color: ColorConstants.kRed,
                                        )
                                      : SvgPicture.asset(
                                          IconConstants.heart,
                                        ),
                                ),
                                MyPadding(
                                  width: AppSizes.getW(context) * 0.04,
                                ),
                                CustomIconBtn(
                                  ontap: () {
                                    BlocProvider.of<DetailsCubit>(context)
                                        .share("Something");
                                  },
                                  icon: SvgPicture.asset(
                                    IconConstants.share,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: AppSizes.getH(context) * 0.020,
                      bottom: AppSizes.getH(context) * 0.024,
                      child: Container(
                        padding: EdgeInsets.all(AppSizes.getH(context) * .003),
                        decoration: BoxDecoration(
                          color: ColorConstants.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              AppSizes.getH(context) * 0.02,
                            ),
                          ),
                        ),
                        child: DotsIndicator(
                          dotsCount: product.images!.length,
                          position: state.currentIndex,
                          decorator: DotsDecorator(
                            activeColor: ColorConstants.black,
                            color: ColorConstants.dotColor,
                            size: Size(
                              AppSizes.getH(context) * 0.008,
                              AppSizes.getH(context) * 0.008,
                            ),
                            activeSize: Size(
                              AppSizes.getH(context) * 0.008,
                              AppSizes.getH(context) * 0.008,
                            ),
                          ),
                        ),
                      ),
                    )
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
