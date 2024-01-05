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
import 'package:florify/presentation/widgets/snackbar_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.productId});
  final int productId;
  @override
  Widget build(BuildContext context) {
    return BlocListener<DetailsCubit, DetailsState>(
      listener: (context, state) {
        if (state is DetailsBuildable) {
          if (state.savedToCard) {
            SnackbarWidgets.showSuccess(
              context,
              "Mahsulot savatga qo'shildi",
            );
          }
          if (state.product_is_exist_in_card) {
            SnackbarWidgets.showInfo(
              context,
              "Mahsulot allaqachon savatchada mavjud",
            );
          }
        }
      },
      child: Buildable<DetailsCubit, DetailsState, DetailsBuildable>(
        properties: (buildable) => [
          buildable.loading,
          buildable.currentIndex,
          buildable.error,
          buildable.failed,
          buildable.success,
          buildable.isModal_hud,
          buildable.productDetailsData,
          buildable.likeIds,
          buildable.likes
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
                      product: state.productDetailsData!,
                      likeIds: state.likeIds,
                    ),
                    ProductDetailsWidget(
                      product: state.productDetailsData!,
                    ),
                    DiscriptionWidget(
                      product: state.productDetailsData!,
                    ),
                    const ShopNameTitle(),
                    SendSmthToShop(
                      product: state.productDetailsData!,
                    ),
                state.productDetailsData!.similar_products!.isNotEmpty?    RelatedProducts2(
                      title: "O'xshash mahsulotlar",
                      similarProducts:
                          state.productDetailsData!.similar_products ?? [],
                    ):const SliverToBoxAdapter(),
                    context.read<DetailsCubit>().getUser() != null
                        ? const RelatedProducts(title: "Yaqinda ko'rilganlar")
                        : const SliverToBoxAdapter(),
                  ],
                ),
              ),
              HomeFloatingBtn(
                product: state.productDetailsData!,
              )
            ],
          );
        },
      ),
    );
  }
}
