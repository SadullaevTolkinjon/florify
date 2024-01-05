import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/recently/recently_product_model.dart';
import 'package:florify/presentation/product_details/cubit/details_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/widgets/similar_products_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RelatedProducts extends StatelessWidget {
  const RelatedProducts({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = locator<DetailsCubit>();
        cubit.fetchRecentlyProducts();
        return cubit;
      },
      child: BlocListener<DetailsCubit, DetailsState>(
        listener: (context, state) {},
        child: Buildable<DetailsCubit, DetailsState, DetailsBuildable>(
            properties: (buildable) => [
                  buildable.loading,
                  buildable.failed,
                  buildable.recentlyProducts
                ],
            builder: (context, state) {
              if (state.failed) {
                return const SliverToBoxAdapter();
              }
              return SliverPadding(
                padding: EdgeInsets.only(
                    top: AppSizes.getH(context) * 0.024,
                    left: AppSizes.getH(context) * 0.016),
                sliver: SliverToBoxAdapter(
                  child: SizedBox(
                    height: AppSizes.getH(context) * 0.25,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: AppSizes.getH(context) * 0.019,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        MyPadding(
                          height: AppSizes.getH(context) * 0.017,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: SimilarProductsContainer(
                                  recentlyProduct:
                                      state.recentlyProducts[index],
                                  ontap: () {
                                    Navigator.pushNamed(
                                      context,
                                      NavigatorConst.productDetails,
                                      arguments: state
                                          .recentlyProducts[index].product_id,
                                    );
                                  },
                                ),
                              );
                            },
                            itemCount: state.recentlyProducts.length,
                            scrollDirection: Axis.horizontal,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class RelatedProducts2 extends StatelessWidget {
  const RelatedProducts2({super.key, required this.title,required this.similarProducts});
  final String title;
  final List<Product> similarProducts;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
          top: AppSizes.getH(context) * 0.024,
          left: AppSizes.getH(context) * 0.016),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: AppSizes.getH(context) * 0.25,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: AppSizes.getH(context) * 0.019,
                  fontWeight: FontWeight.w600,
                ),
              ),
              MyPadding(
                height: AppSizes.getH(context) * 0.017,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SimilarProductsContainer(
                        recentlyProduct:  RecentlyProductModel(
                          product: Product(
                            price: similarProducts[index].price??0,
                            name: similarProducts[index].name??"",
                            images: similarProducts[index].images
                          ),
                        ),
                        ontap: () {
                          Navigator.pushNamed(
                            context,
                            NavigatorConst.productDetails,
                            arguments: 2,
                          );
                        },
                      ),
                    );
                  },
                  itemCount: similarProducts.length,
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
