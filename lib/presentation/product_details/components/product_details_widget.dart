import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:florify/presentation/product_details/components/info_container.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({super.key, required this.product});
  final ProductDetailModel product;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.all(AppSizes.getH(context) * 0.024),
      sliver: SliverToBoxAdapter(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name ?? "",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: AppSizes.getH(context) * 0.020,
                fontWeight: FontWeight.w600,
              ),
            ),
            MyPadding(
              height: AppSizes.getH(context) * 0.016,
            ),
            Wrap(
              runSpacing: AppSizes.getW(context) * 0.008,
              spacing: AppSizes.getW(context) * 0.008,
              children: [
                ...List.generate(
                  5,
                  (index) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          AppSizes.getH(context) * 0.010,
                        ),
                      ),
                      color: ColorConstants.orange.withOpacity(0.2),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: AppSizes.getH(context) * .004,
                      horizontal: AppSizes.getH(context) * .012,
                    ),
                    child: Text(
                      "Bayramona",
                      style: TextStyle(
                        fontSize: AppSizes.getH(context) * 0.014,
                      ),
                    ),
                  ),
                )
              ],
            ),
            MyPadding(
              height: AppSizes.getH(context) * 0.024,
            ),
            Row(
              children: [
                const InfoDetailsContainer(
                  iconPath: IconConstants.star,
                  title: "Sharhlar",
                  count: "30",
                ),
                MyPadding(
                  width: AppSizes.getH(context) * 0.030,
                ),
                InfoDetailsContainer(
                  iconPath: IconConstants.shopping,
                  title: "Mavjud",
                  count: "${product.quantity ?? 0}",
                ),
                MyPadding(
                  width: AppSizes.getH(context) * 0.030,
                ),
                const InfoDetailsContainer(
                  iconPath: IconConstants.lock,
                  title: "Buyurtma",
                  count: "887",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
