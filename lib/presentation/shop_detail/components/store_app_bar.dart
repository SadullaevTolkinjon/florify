import 'package:florify/constants/api/api_constants.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:flutter/material.dart';

class StoreAppBar extends StatelessWidget {
  const StoreAppBar({super.key, required this.shop});
  final Salesman shop;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        child: const Icon(Icons.arrow_back),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      expandedHeight: AppSizes.geth(context, 0.22),
      pinned: true,
      floating: true,
      snap: true,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
          title: Text(
            shop.username ?? "Unkonwn shop",
            style: TextStyle(color: ColorConstants.black),
          ),
          centerTitle: true, // This centers the title
          background: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: AppSizes.geth(context, 0.045),
                    )
                  ],
                ),
              )
            ],
          )),
      // Other SliverAppBar properties
      // ...
    );
  }
}
