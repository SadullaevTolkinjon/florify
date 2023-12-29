import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/api/api_constants.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/domain/model/my_comments/my_comments_model.dart';
import 'package:florify/presentation/card/components/korzina_product_container.dart';
import 'package:florify/presentation/my_comments/components/status_wisget.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyCommentsContainer extends StatelessWidget {
  const MyCommentsContainer({
    super.key,
    required this.comment,
    required this.ontap,
  });
  final Comment comment;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                          "${ApiConstants.baseUrl}${comment.product!.images!.isNotEmpty ? comment.product!.images!.first.image! : ""}}"),
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
                      comment.product!.name ?? "",
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
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
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
              PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: const Text("Delete"),
                      onTap: () {
                        ontap();
                      },
                    )
                  ];
                },
                icon: Icon(
                  Icons.more_vert,
                  size: AppSizes.getw(context, 0.06),
                ),
              ),
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
            // height: AppSizes.geth(context, 0.09),
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
              comment.text ?? "",
              style: TextStyle(
                fontSize: AppSizes.geth(context, 0.016),
              ),
            ),
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.016),
          ),
          const StatusWidget(isAccepted: true),
          // const Spacer(),
          MyPadding(
            height: AppSizes.geth(context, 0.024),
          ),
          const Divider(
            height: 0,
            thickness: 0.7,
          )
        ],
      ),
    );
  }
}
