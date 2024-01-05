import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/api/api_constants.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/shop_detail/components/shop_details_btn.dart';
import 'package:florify/presentation/shop_detail/components/store_app_bar.dart';
import 'package:florify/presentation/shop_detail/cubit/shop_details_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/error_widget.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class ShopDetailsView extends StatefulWidget {
  const ShopDetailsView({super.key, required this.salesmanId});
  final String salesmanId;

  @override
  State<ShopDetailsView> createState() => _ShopDetailsViewState();
}

class _ShopDetailsViewState extends State<ShopDetailsView> {
  final ScrollController _scrollController = ScrollController();
  bool _showAppbarBackground = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 100 && !_showAppbarBackground) {
        setState(() {
          _showAppbarBackground = true;
        });
      } else if (_scrollController.offset <= 100 && _showAppbarBackground) {
        setState(() {
          _showAppbarBackground = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ShopDetailsCubit, ShopDetailsState>(
      listener: (context, state) {},
      child:
          Buildable<ShopDetailsCubit, ShopDetailsState, ShopDetailsBuildable>(
        properties: (buildable) => [
          buildable.loading,
          buildable.failed,
          buildable.error,
          buildable.success
        ],
        builder: (context, state) {
          if (state.loading) {
            return const LoaderWidget();
          }
          if (state.failed) {
            return ErrorWidgetCustom(ontap: () {
              context.read<ShopDetailsCubit>().fetch(widget.salesmanId);
            });
          }
          return CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: AppSizes.geth(context, 0.22),
                automaticallyImplyLeading: false,
                elevation: 0.5,
                leading: ShopDetailsBtn(
                    ontap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back)),
                actions: [
                  ShopDetailsBtn(
                      ontap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.favorite_border)),
                  MyPadding(
                    width: AppSizes.geth(context, 0.02),
                  ),
                  ShopDetailsBtn(
                      ontap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(IconConstants.share_store)),
                  MyPadding(
                    width: AppSizes.geth(context, 0.02),
                  ),
                ],
                flexibleSpace: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  // color:
                  //     _showAppbarBackground ? Colors.blue : Colors.transparent,
                  child: FlexibleSpaceBar(
                    title: _showAppbarBackground
                        ? Text(
                            "The Flower Factory",
                            style: TextStyle(
                                fontSize: AppSizes.geth(context, 0.021),
                                fontWeight: FontWeight.w600,
                                color: ColorConstants.black),
                          )
                        : const SizedBox(),
                    background: Stack(
                      children: [
                        AnimatedPositioned(
                          bottom: AppSizes.geth(context, 0.06),
                          left: AppSizes.geth(context, 0.01),
                          right: AppSizes.geth(context, 0.01),
                          duration: const Duration(milliseconds: 200),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: AppSizes.geth(context, 0.04),
                                backgroundColor: Colors.transparent,
                                backgroundImage: const CachedNetworkImageProvider(
                                    "https://i.pinimg.com/originals/9e/5d/a7/9e5da7e925d833118004e743410d3996.jpg"),
                              ),
                              MyPadding(
                                width: AppSizes.geth(context, 0.014),
                              ),
                              Expanded(
                                child: Text(
                                  "The Flower Factory",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: AppSizes.geth(context, 0.021),
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                        AnimatedPositioned(
                          bottom: AppSizes.geth(context, 0.012),
                          left: AppSizes.geth(context, 0.014),
                          right: AppSizes.geth(context, 0.014),
                          duration: const Duration(milliseconds: 200),
                          child: Row(children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                "1021 ta buyurtma",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: AppSizes.geth(context, 0.017),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            MyPadding(
                              width: AppSizes.geth(context, 0.008),
                            ),
                            Expanded(
                              flex: 3,
                              child:RatingBar.builder(
                                    initialRating: 5,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: AppSizes.geth(context, 0.025),
                                    ignoreGestures: false,
                                    updateOnDrag: true,
                                    itemPadding: EdgeInsets.zero,
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: ColorConstants.orange,
                                    ),
                                    onRatingUpdate: (rating) {
                                     
                                    },
                                    unratedColor: ColorConstants.kgrey,
                                  ),
                            ),
                            MyPadding(
                              width: AppSizes.geth(context, 0.008),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "5.0 (1096)",
                                textAlign: TextAlign.left
                                ,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: AppSizes.geth(context, 0.015),
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //  StoreAppBar(shop: state.shop!),
              // Other slivers or content for the CustomScrollView
              SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.geth(context, 0.008),
                  ),
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => ProductContainer(
                              ontap: () async {
                                await Navigator.pushNamed(
                                  context,
                                  NavigatorConst.productDetails,
                                  arguments: state.shop!.products![index].id,
                                ).then(
                                  (value) {
                                    // BlocProvider.of<HomeCubit>(context).checkLikes();
                                  },
                                );
                              },
                              product: state.shop!.products![index],
                              likeBtn: () {
                                // if (BlocProvider.of<HomeCubit>(context).getUser() != null) {
                                //   if (widget.likes.contains(
                                //     item.id.toString(),
                                //   )) {
                                //     // context.read<HomeCubit>().disLike(
                                //     //       item.id!,
                                //     //     );
                                //   } else {
                                //   //  context.read<HomeCubit>().pressLike(item.id!);
                                //   }
                                // }
                              },
                              isLike: false,
                              //  widget.likes.contains(
                              //   item.id.toString(),
                              // )
                              //     ? true
                              //     : false,
                            ),
                        childCount: state.shop!.products!.length),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: AppSizes.getH(context) * 0.31),
                  )),
            ],
          );
        },
      ),
    );
  }
}
