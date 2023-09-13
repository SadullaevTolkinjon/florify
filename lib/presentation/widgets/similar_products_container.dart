

import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class SimilarProductsContainer extends StatelessWidget {
  const SimilarProductsContainer({super.key, required this.ontap});
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: SizedBox(
        height: AppSizes.getH(context) * 0.22,
        width: AppSizes.getW(context) * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppSizes.getH(context) * 0.14,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                    "https://www.theflowerland.com.au/cdn/shop/products/IMG_20210621_160842_1-01_edit_634838780430733-01_large_crop_center.jpg?v=1626068130",
                  ),
                ),
              ),
            ),
            MyPadding(
              height: AppSizes.getH(context) * 0.016,
            ),
            Text(
              "Gullar va shokolad",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: AppSizes.getH(context) * 0.016,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF9F9F9),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.getW(context) * 0.02,
                  vertical: AppSizes.getH(context) * 0.004),
              child: Text(
                "560 000 so‘m",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: AppSizes.getH(context) * 0.016,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
