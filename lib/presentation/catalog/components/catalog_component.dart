import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/api/api_constants.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class CatalogProductWidget extends StatelessWidget {
  const CatalogProductWidget({
    super.key,
    required this.index,
    required this.category,
    required this.ontap,
  });
  final int index;
  final CategoryModel category;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
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
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(
              "${ApiConstants.baseUrl}${category.image!}",
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
                          category.uz ?? "",
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
                          "${category.products!=null? category.products!.length:0} ta mahsulot",
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
      ),
    );
  }
}
