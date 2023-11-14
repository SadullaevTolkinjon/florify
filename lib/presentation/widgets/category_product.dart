import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/api/api_constants.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:flutter/cupertino.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct(
      {super.key,
      required this.index,
      required this.ontap,
      required this.category});
  final int index;
  final Function ontap;
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        height: AppSizes.geth(context, 0.1),
        width:
            index != 2 ? AppSizes.getW(context) * 0.46 : AppSizes.getW(context),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(
              "${ApiConstants.baseUrl}${category.image}",
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: AppSizes.geth(context, 0.031),
              left: AppSizes.geth(context, 0.012),
              right: AppSizes.geth(context, 0.012),
              child: Text(
                category.uz_description ?? "",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.white,
                ),
              ),
            ),
            Positioned(
              bottom: AppSizes.geth(context, 0.024),
              left: AppSizes.geth(context, 0.012),
              right: AppSizes.geth(context, 0.012),
              child: Text(
                category.uz ?? "",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
