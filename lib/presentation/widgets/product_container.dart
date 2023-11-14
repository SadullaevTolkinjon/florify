import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/api/api_constants.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/favorite/favorite_model.dart';
import 'package:florify/presentation/favorite/cubit/favorite_cubit.dart';
import 'package:florify/presentation/widgets/add_to_card_btn.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/like_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_sizes/app_sizes_const.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    required this.ontap,
    required this.product,
    required this.likeBtn,
    required this.isLike,
  });
  final Function ontap;
  final Product product;
  final Function likeBtn;
  final bool isLike;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = locator<FavoriteCubit>();
        cubit.checkLikeIds();
        return cubit;
      },
      child: BlocListener<FavoriteCubit, FavoriteState>(
        listener: (context, state) {},
        child: Buildable<FavoriteCubit, FavoriteState, FavoriteBuildable>(
            properties: (buildable) => [
                  buildable.likeIds,
                ],
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  ontap();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorConstants.grey100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        AppSizes.getH(context) * 0.01,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.getW(context) * 0.014,
                    vertical: AppSizes.getW(context) * 0.016,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: AppSizes.getH(context) * 0.16,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              AppSizes.getH(context) * 0.008,
                            ),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                              "${ApiConstants.baseUrl}${product.image!.first.image}",
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 10,
                              top: 10,
                              child: LikeBtn(
                                  ontap: () {
                                    if (context
                                            .read<FavoriteCubit>()
                                            .getUser() !=
                                        null) {
                                      likeBtn();
                                    }
                                  },
                                  isLike: isLike
                                  // ? true
                                  // : false

                                  // state.likeIds!.contains(
                                  //         product.id.toString())
                                  // ? true
                                  // : false

                                  ),
                            )
                          ],
                        ),
                      ),
                      MyPadding(
                        height: AppSizes.getH(context) * 0.015,
                      ),
                      Text(
                        product.name ?? "",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: AppSizes.getH(context) * 0.016,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      _buildPadding(context, 0.01),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 6),
                        decoration: BoxDecoration(
                          color: ColorConstants.yellow,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(IconConstants.card),
                            const MyPadding(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Text(
                                "${product.quantity ?? 0} ta buyurtma",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "${product.price ?? 0} so‘m",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: AppSizes.getH(context) * 0.018,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const MyPadding(
                            width: 8.0,
                          ),
                          AddToCardBtn(
                            ontap: () {},
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  Widget _buildPadding(BuildContext context, double height) {
    return MyPadding(
      height: AppSizes.getH(context) * height,
    );
  }
}
