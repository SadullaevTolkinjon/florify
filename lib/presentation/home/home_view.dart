import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/presentation/home/components/app_bar.dart';
import 'package:florify/presentation/home/components/category_title.dart';
import 'package:florify/presentation/home/components/category_widget.dart';
import 'package:florify/presentation/widgets/like_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.getW(context) * 0.019),
      child: CustomScrollView(
        slivers: [
          _buildAppBar(),
          _buildCategories(),
          _buildCategoryTitle(),
          SliverToBoxAdapter(
            child: MyPadding(
              height: AppSizes.getH(context) * 0.016,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Text(
                  "Tavfsiyalar",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.selectedNavBarColor,
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: MyPadding(
              height: AppSizes.getH(context) * 0.012,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ProductContainer(
                ontap: () {},
              ),
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: AppSizes.getH(context) * 0.31,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return const HomeAppBar();
  }

  Widget _buildCategories() {
    return const CategoryWidget();
  }

  Widget _buildCategoryTitle() {
    return const CategoryTitle();
  }
}
