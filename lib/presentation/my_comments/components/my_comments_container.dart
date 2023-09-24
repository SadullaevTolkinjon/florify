import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/card/components/korzina_product_container.dart';
import 'package:florify/presentation/my_comments/components/status_wisget.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyCommentsContainer extends StatelessWidget {
  const MyCommentsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppSizes.geth(context, 0.1),
                width: AppSizes.geth(context, 0.1),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: CachedNetworkImage(
                      imageUrl:
                          "https://giftsomething.com/media/catalog/product/cache/13f615a6258e67a8fd893b99198f5253/f/b/fb130097_pink_roses_eustoma_flower_bouquet_-1c.jpg"),
                ),
              ),
              MyPadding(
                width: AppSizes.geth(context, 0.016),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gullar va shokolad",
                      style: TextStyle(
                        fontSize: AppSizes.geth(context, 0.016),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    MyPadding(
                      height: AppSizes.geth(context, 0.016),
                    ),
                    SizedBox(
                      width: AppSizes.geth(context, 0.14),
                      child: const ShopNameWidget(
                        shopName: "Store: Fendi",
                      ),
                    ),
                    MyPadding(
                      height: AppSizes.geth(context, 0.016),
                    ),
                    Text(
                      "Buyurtma sanasi 13 Iyl, 2023",
                      style: TextStyle(
                        fontSize: AppSizes.geth(context, 0.014),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              MyPadding(
                width: AppSizes.geth(context, 0.016),
              ),
              Icon(
                Icons.more_vert,
                size: AppSizes.getw(context, 0.06),
              )
            ],
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.02),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: AppSizes.geth(context, 0.02),
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25,
                  ignoreGestures: true,
                  itemPadding: EdgeInsets.zero,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                  unratedColor: ColorConstants.kgrey,
                ),
              ),
              Text(
                "13 Iyl, 2023",
                style: TextStyle(
                  fontSize: AppSizes.geth(context, 0.016),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.02),
          ),
          Container(
            height: AppSizes.geth(context, 0.09),
            width: double.infinity,
            padding: EdgeInsets.all(
              AppSizes.geth(context, 0.02),
            ),
            decoration: BoxDecoration(
              color: ColorConstants.kgrey,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Text(
              "Juda chiroyli ekan, onamga yoqdi",
              style: TextStyle(
                fontSize: AppSizes.geth(context, 0.016),
              ),
            ),
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.016),
          ),
          const StatusWidget(isAccepted: true),
          Spacer(),
          Divider(
            height: 0,
            thickness: 0.7,
          )
        ],
      ),
    );
  }
}
