import 'package:florify/presentation/product_details/components/app_bar.dart';
import 'package:florify/presentation/product_details/components/discription_widget.dart';
import 'package:florify/presentation/product_details/components/floating_btn.dart';
import 'package:florify/presentation/product_details/components/product_details_widget.dart';
import 'package:florify/presentation/product_details/components/related_products.dart';
import 'package:florify/presentation/product_details/components/send_smth_to_shop.dart';
import 'package:florify/presentation/product_details/components/shop_name_title.dart';
import 'package:florify/presentation/product_details/cubit/details_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Buildable<DetailsCubit, DetailsState, DetailsBuildable>(
      properties: (buildable) => [
        buildable.loading,
        buildable..currentIndex,
        buildable.error,
        buildable.failed,
        buildable.success,
        buildable.isModal_hud,
      ],
      builder: (context, state) {
        return const Column(
          children: [
            Expanded(
              flex: 9,
              child: CustomScrollView(
                slivers: [
                  ProductDetailsAppbar(),
                  ProductDetailsWidget(),
                  DiscriptionWidget(),
                  ShopNameTitle(),
                  SendSmthToShop(),
                  RelatedProducts(title: "O'xshash mahsulotlar"),
                  RelatedProducts(title: "Yaqinda ko'rilganlar"),
                ],
              ),
            ),
           HomeFloatingBtn()
          ],
        );
      },
    );
  }
}
