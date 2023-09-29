import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/all_category_product/cubit/all_category_product_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/error_widget.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllCategoryProductView extends StatelessWidget {
  const AllCategoryProductView({
    super.key,
    required this.categoryName,
    required this.id,
  });
  final String categoryName;
  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(categoryName),
      ),
      body: BlocListener<AllCategoryProductCubit, AllCategoryProductState>(
        listener: (context, state) {},
        child: Buildable<AllCategoryProductCubit, AllCategoryProductState,
            AllCategoryProductBuildable>(
          properties: (buildable) => [
            buildable.loading,
            buildable.failed,
            buildable.error,
            buildable.success,
            buildable.data
          ],
          builder: (context, state) {
            if (state.loading) {
              return const LoaderWidget();
            }
            if (state.failed) {
              return ErrorWidgetCustom(
                ontap: () {
                  BlocProvider.of<AllCategoryProductCubit>(context)
                      .fetchProducts(id);
                },
              );
            }
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.geth(context, 0.02)),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: MyPadding(height: AppSizes.geth(context, 0.02)),
                  ),
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => ProductContainer(
                              ontap: () {
                                Navigator.pushNamed(
                                  context,
                                  NavigatorConst.productDetails,
                                  arguments: state.data!.product![index].id,
                                );
                              },
                            ),
                        childCount: state.data!.product!.length),
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
          },
        ),
      ),
    );
  }
}
