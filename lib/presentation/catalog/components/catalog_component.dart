import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class CatalogProductWidget extends StatelessWidget {
  const CatalogProductWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ((index + 1).remainder(3)) == 0
          ? double.infinity
          : AppSizes.getW(context) * 0.45,
      height: AppSizes.getH(context) * 0.20,
      decoration: BoxDecoration(
        color: ColorConstants.blue100,
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSizes.getH(context) * 0.012,
          ),
        ),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(
            "https://ichef.bbci.co.uk/news/976/cpsprodpb/71AB/production/_128399092_whatsubject.jpg",
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(AppSizes.getH(context) * 0.012),
              ),
            ),
            height: AppSizes.getH(context) * 0.05,
            width: double.infinity,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10.0,
                  sigmaY: 10.0,
                ),
                child: Container(
                  width: double.infinity,
                  height: AppSizes.getH(context) * 0.05,
                  decoration: BoxDecoration(
                    color: ColorConstants.black.withOpacity(0.3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        AppSizes.getH(context) * 0.012,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Yumshoq o'yinchoqlar",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.white,
                          fontSize: AppSizes.getH(context) * 0.018,
                        ),
                      ),
                      MyPadding(
                        height: AppSizes.getH(context) * 0.004,
                      ),
                      Text(
                        "10 ta mahsulot",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: ColorConstants.white,
                          fontSize: AppSizes.getH(context) * 0.014,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
