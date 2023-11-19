import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/domain/model/card_product_model/card_product_model.dart';
import 'package:florify/presentation/card/components/app_bar.dart';
import 'package:florify/presentation/card/components/korzina_products_widget.dart';
import 'package:florify/presentation/card/components/price_row_title.dart';
import 'package:florify/presentation/card/cubit/card_cubit.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/presentation/product_details/components/related_products.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/empty_widget.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/widgets/separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CardCubit, CardState>(
      listener: (context, state) {},
      child: Buildable<CardCubit, CardState, CardBuildableState>(
          properties: (buildable) => [
                buildable.loading,
                buildable.failed,
                buildable.success,
                buildable.prodcuts,
                buildable.error,
                buildable.isModal_hud
              ],
          builder: (context, state) {
            if (state.prodcuts!.isEmpty) {
              return EmptyWidget(
                ontap: () {
                  BlocProvider.of<HomeCubit>(context).changeTabs(0);
                },
              );
            }
            return CustomScrollView(
              slivers: [
                _buildAppbar(),
                _buildProducts(state.prodcuts ?? []),
                _buildTitlePrice(
                  context,
                  state.prodcuts!.length,
                  state.price,
                ),
                _buildTitleDelivery(context),
                _buildSeparator(context),
                _buildAllPrice(context,state.allPrice),
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
          }),
    );
  }

  Widget _buildAppbar() {
    return const KorzinaAppBar();
  }

  Widget _buildProducts(final List<CardProduct> products) {
    return KorzinaProductsWidget(
      products: products,
    );
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

  Widget _buildTitlePrice(
      BuildContext context, int productCount, int productsPrice) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.getH(context) * 0.024,
        horizontal: AppSizes.getH(context) * 0.024,
      ),
      sliver: SliverToBoxAdapter(
        child: PriceRowTitle(
          leftTitle: "$productCount ta mahsulot",
          rightTitle: "$productsPrice so'm",
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

  Widget _buildAllPrice(BuildContext context, int price) {
    return SliverPadding(
      padding: EdgeInsets.all(
        AppSizes.getH(context) * 0.024,
      ),
      sliver: SliverToBoxAdapter(
        child: PriceRowTitle(
          leftTitle: "Jami",
          rightTitle: "${price+20000} so'm",
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
