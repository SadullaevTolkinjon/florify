

import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';

class ImageAppbar extends StatelessWidget {
  const ImageAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: AppSizes.getH(context) * 0.25,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: AppSizes.getH(context) * 0.19,
              color: ColorConstants.selectedNavBarColor,
              width: double.infinity,
            ),
            Positioned(
              bottom: AppSizes.getH(context) * 0.02,
              right: AppSizes.getH(context) * 0.12,
              left: AppSizes.getH(context) * 0.12,
              child: CircleAvatar(
                radius: AppSizes.getH(context) * 0.05,
                backgroundColor: ColorConstants.white,
                child: CircleAvatar(
                  radius: AppSizes.getH(context) * 0.045,
                  backgroundImage: const CachedNetworkImageProvider(
                      "https://media.istockphoto.com/id/1200677760/photo/portrait-of-handsome-smiling-young-man-with-crossed-arms.jpg?s=612x612&w=0&k=20&c=g_ZmKDpK9VEEzWw4vJ6O577ENGLTOcrvYeiLxi8mVuo="),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
