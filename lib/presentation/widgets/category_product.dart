
import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/cupertino.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: index != 2 ? AppSizes.getW(context)*0.46 : AppSizes.getW(context),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(
            "https://img.freepik.com/premium-photo/bunch-pink-white-tulips-pink-background-spring_764173-342.jpg?w=2000",
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 31,
            left: 12,
            child: Text(
              "Yangi kelgan",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorConstants.white,
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 12,
            child: Text(
              "Chiroyli lolalar",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorConstants.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
