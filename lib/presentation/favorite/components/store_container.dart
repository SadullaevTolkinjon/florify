

import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/widgets/like_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/icons/icon_constants.dart';

class StoreContainer extends StatelessWidget {
  const StoreContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: ColorConstants.black.withOpacity(0.2)),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        padding:
            EdgeInsets.all(AppSizes.getH(context) * 0.01),
        margin: EdgeInsets.symmetric(
            horizontal: AppSizes.getH(context) * 0.016),
        child: Column(
          children: [
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              title: Text(
                "The Flower factory",
                style: TextStyle(
                    fontSize: AppSizes.getH(context) * 0.020,
                    fontWeight: FontWeight.w700),
              ),
              subtitle: const Text(
                "Gullar & Sovg‘alar Suvenerlar",
              ),
              trailing: LikeBtn(
                isBorder: true,
                ontap: () {},
                isLike: false,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          IconConstants.empty_star),
                      MyPadding(
                        width: AppSizes.getH(context) * 0.004,
                      ),
                      Expanded(
                        child: RichText(
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            text: "4.4",
                            style: TextStyle(
                                color: ColorConstants.black),
                            children: [
                              TextSpan(
                                text: "(166)",
                                style: TextStyle(
                                  color: ColorConstants.black
                                      .withOpacity(0.3),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Expanded(
                  flex: 7,
                  child: Text(
                    "15 % Chegirmalar",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            MyPadding(
              height: AppSizes.getH(context) * 0.024,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent:
                      AppSizes.getH(context) * 0.13,
                  mainAxisSpacing:
                      AppSizes.getH(context) * 0.010,
                  crossAxisSpacing:
                      AppSizes.getH(context) * 0.010,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: ColorConstants.blue100,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                            "https://helloblooms.com.au/cdn/shop/products/double-bunch-HB-5_800x.jpg?v=1647993407"),
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
