import 'package:florify/presentation/product_details/components/app_bar.dart';
import 'package:florify/presentation/product_details/components/discription_widget.dart';
import 'package:florify/presentation/product_details/components/floating_btn.dart';
import 'package:florify/presentation/product_details/components/product_details_widget.dart';
import 'package:florify/presentation/product_details/components/related_products.dart';
import 'package:florify/presentation/product_details/components/send_smth_to_shop.dart';
import 'package:florify/presentation/product_details/components/shop_name_title.dart';
import 'package:florify/presentation/product_details/cubit/details_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/error_widget.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.productId});
  final int productId;
  @override
  Widget build(BuildContext context) {
    return BlocListener<DetailsCubit, DetailsState>(
      listener: (context, state) {},
      child: Buildable<DetailsCubit, DetailsState, DetailsBuildable>(
        properties: (buildable) => [
          buildable.loading,
          buildable.currentIndex,
          buildable.error,
          buildable.failed,
          buildable.success,
          buildable.isModal_hud,
          buildable.product
        ],
        builder: (context, state) {
          if (state.loading) {
            return const LoaderWidget();
          }
          if (state.failed) {
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                automaticallyImplyLeading: true,
              ),
              body: ErrorWidgetCustom(
                ontap: () {
                  BlocProvider.of<DetailsCubit>(context)
                      .fetchProduct(productId);
                },
              ),
            );
          }
          return Column(
            children: [
              Expanded(
                flex: 9,
                child: CustomScrollView(
                  slivers: [
                    ProductDetailsAppbar(
                      product: state.product!,
                    ),
                    ProductDetailsWidget(
                      product: state.product!,
                    ),
                    DiscriptionWidget(
                      product: state.product!,
                    ),
                    const ShopNameTitle(),
                    SendSmthToShop(
                      product: state.product!,
                    ),
                    const RelatedProducts(title: "O'xshash mahsulotlar"),
                    const RelatedProducts(title: "Yaqinda ko'rilganlar"),
                  ],
                ),
              ),
              const HomeFloatingBtn()
            ],
          );
        },
      ),
    );
  }
}
