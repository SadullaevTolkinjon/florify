import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/catalog/components/catalog_component.dart';
import 'package:florify/presentation/home/components/search_bar.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class CatalogView extends StatelessWidget {
  const CatalogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.getH(context) * 0.020,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: HomeSearchBar(
                title: "Mahsulot va kataloglarni qidirish",
                ontap: () {},
              ),
            ),
            MyPadding(
              height: AppSizes.getH(context) * 0.030,
            ),
            Wrap(
              runSpacing: 4,
              spacing: 4,
              children: [
                ...List.generate(
                  6,
                  (index) {
                    return CatalogProductWidget(index: index);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
