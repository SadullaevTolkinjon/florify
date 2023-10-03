import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';

class OformiliniyaProducts extends StatelessWidget {
  const OformiliniyaProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: AppSizes.geth(context, 0.09),
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                right: AppSizes.geth(context, 0.01),
              ),
              child: Container(
                height: AppSizes.geth(context, 0.09),
                width: AppSizes.geth(context, 0.08),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: ColorConstants.blue,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl:
                          "https://i.pinimg.com/originals/a2/d5/f1/a2d5f1b12e2e121068b2a7f79c57d986.jpg"),
                ),
              ),
            );
          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
