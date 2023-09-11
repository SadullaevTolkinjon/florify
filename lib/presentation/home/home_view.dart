import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/presentation/home/components/app_bar.dart';
import 'package:florify/presentation/home/components/category_title.dart';
import 'package:florify/presentation/home/components/category_widget.dart';
import 'package:florify/presentation/home/components/home_categories.dart';
import 'package:florify/presentation/home/components/home_products.dart';
import 'package:florify/presentation/widgets/categories_btn.dart';
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
          _buildPadding(context, 0.016),
          _buildHomeCategories(),
          _buildPadding(context, 0.012),
          _buildHomeProducts(),
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

  Widget _buildHomeProducts() {
    return const HomeProducts();
  }

  Widget _buildHomeCategories() {
    return const HomeCategories();
  }

  Widget _buildPadding(BuildContext context, double height) {
    return SliverToBoxAdapter(
      child: MyPadding(
        height: AppSizes.getH(context) * height,
      ),
    );
  }
}
