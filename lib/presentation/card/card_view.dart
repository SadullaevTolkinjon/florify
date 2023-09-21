import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/card/components/app_bar.dart';
import 'package:florify/presentation/card/components/korzina_products_widget.dart';
import 'package:florify/presentation/card/components/price_row_title.dart';
import 'package:florify/presentation/product_details/components/related_products.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/widgets/separator.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _buildAppbar(),
        _buildProducts(),
        _buildTitlePrice(context),
        _buildTitleDelivery(context),
        _buildSeparator(context),
        _buildAllPrice(context),
        _buildSeparator(context),
        _buildRelatedProducts(),
        SliverToBoxAdapter(
          child: MyPadding(
            height: AppSizes.getH(context) * 0.020,
          ),
        ),
        _buildDivider(),
        _buildOrderBtn(context),
      ],
    );
  }

  Widget _buildAppbar() {
    return const KorzinaAppBar();
  }

  Widget _buildProducts() {
    return const KorzinaProductsWidget();
  }

  Widget _buildSeparator(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.getH(context) * 0.024,
      ),
      sliver: SliverToBoxAdapter(
        child: MySeparator(
          color: ColorConstants.black.withOpacity(0.2),
        ),
      ),
    );
  }

  Widget _buildTitlePrice(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.getH(context) * 0.024,
        horizontal: AppSizes.getH(context) * 0.024,
      ),
      sliver: const SliverToBoxAdapter(
        child: PriceRowTitle(
          leftTitle: "3 ta mahsulot",
          rightTitle: "2 300 000 so'm",
        ),
      ),
    );
  }

  Widget _buildTitleDelivery(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
        right: AppSizes.getH(context) * 0.024,
        left: AppSizes.getH(context) * 0.024,
        bottom: AppSizes.getH(context) * 0.024,
      ),
      sliver: const SliverToBoxAdapter(
        child: PriceRowTitle(
          leftTitle: "Yetkazib berish",
          rightTitle: "20 000 so'm",
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildAllPrice(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.all(
        AppSizes.getH(context) * 0.024,
      ),
      sliver: const SliverToBoxAdapter(
        child: PriceRowTitle(
          leftTitle: "Jami",
          rightTitle: "100 20 000 so'm",
        ),
      ),
    );
  }

  Widget _buildRelatedProducts() {
    return const RelatedProducts(
      title: "Do‘konning boshqa mahsulotlari",
    );
  }

  Widget _buildOrderBtn(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.getH(context) * 0.032,
          vertical: AppSizes.getH(context) * 0.020),
      sliver: SliverToBoxAdapter(
        child: ElevatedBtnWidget(
          ontap: () {
            Navigator.pushNamed(context, NavigatorConst.oformiliniya);
          },
          height: AppSizes.getH(context) * 0.055,
          width: double.infinity,
          color: ColorConstants.selectedNavBarColor,
          title: "Rasmiylashtirish",
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return SliverToBoxAdapter(
      child: Divider(
        color: ColorConstants.black.withOpacity(0.2),
      ),
    );
  }
}
