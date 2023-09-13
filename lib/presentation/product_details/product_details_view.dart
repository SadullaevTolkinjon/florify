import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/product_details/components/app_bar.dart';
import 'package:florify/presentation/product_details/components/discription_widget.dart';
import 'package:florify/presentation/product_details/components/product_details_widget.dart';
import 'package:florify/presentation/product_details/components/related_products.dart';
import 'package:florify/presentation/product_details/components/send_smth_to_shop.dart';
import 'package:florify/presentation/product_details/components/shop_name_title.dart';
import 'package:florify/presentation/product_details/cubit/details_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/widgets/similar_products_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Buildable<DetailsCubit, DetailsState, DetailsBuildable>(
      properties: (buildable) => [
        buildable.loading,
        buildable..currentIndex,
        buildable.error,
        buildable.failed,
        buildable.success,
        buildable.isModal_hud,
      ],
      builder: (context, state) {
        return Column(
          children: [
            const Expanded(
              flex: 9,
              child: CustomScrollView(
                slivers: [
                  ProductDetailsAppbar(),
                  ProductDetailsWidget(),
                  DiscriptionWidget(),
                  ShopNameTitle(),
                  SendSmthToShop(),
                  RelatedProducts(title: "O'xshash mahsulotlar"),
                  RelatedProducts(title: "Yaqinda ko'rilganlar"),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.getH(context) * 0.020),
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Narxi",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: AppSizes.getH(context) * 0.012,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            MyPadding(
                              height: AppSizes.getH(context) * 0.004,
                            ),
                            Text(
                              "999999 so'm",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: AppSizes.getH(context) * 0.018,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: ElevatedBtnWidget(
                          ontap: () {},
                          height: AppSizes.getH(context) * 0.05,
                          width: double.infinity,
                          color: ColorConstants.bascetColor,
                          title: "Savatga qo'shish",
                          widget: SvgPicture.asset(IconConstants.bag_white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
