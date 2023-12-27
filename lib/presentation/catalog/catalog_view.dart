import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/catalog/components/catalog_component.dart';
import 'package:florify/presentation/catalog/cubit/catalog_cubit.dart';
import 'package:florify/presentation/home/components/search_bar.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/empty_widget.dart';
import 'package:florify/presentation/widgets/error_widget.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogView extends StatelessWidget {
  const CatalogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CatalogCubit, CatalogState>(
        listener: (context, state) {},
        child: Buildable<CatalogCubit, CatalogState, CatalogBuildable>(
            properties: (buildable) => [
                  buildable.data,
                  buildable.loading,
                  buildable.failed,
                  buildable.error,
                  buildable.success
                ],
            builder: (context, state) {
              if (state.loading) {
                return const LoaderWidget();
              }
              if (state.failed) {
                return ErrorWidgetCustom(ontap: () {
                  BlocProvider.of<CatalogCubit>(context).fetchCategories();
                });
              }
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.getH(context) * 0.020,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MyPadding(
                        height: AppSizes.geth(context, 0.01),
                      ),
                      SafeArea(
                        child: HomeSearchBar(
                          title: "Mahsulot va kataloglarni qidirish",
                          ontap: () {
                            Navigator.pushNamed(
                              context,
                              NavigatorConst.searchPage,
                            );
                          },
                        ),
                      ),
                      MyPadding(
                        height: AppSizes.getH(context) * 0.020,
                      ),
                      state.data.isNotEmpty
                          ? Wrap(
                              runSpacing: AppSizes.geth(context, 0.024),
                              spacing: 4,
                              children: [
                                ...List.generate(
                                  state.data.length,
                                  (index) {
                                    return CatalogProductWidget(
                                      index: index,
                                      category: state.data[index],
                                      ontap: () {
                                        Navigator.pushNamed(
                                          context,
                                          NavigatorConst
                                              .allCategoryProductsView,
                                          arguments: [
                                            state.data[index].uz,
                                            state.data[index].id
                                          ],
                                        );
                                      },
                                    );
                                  },
                                )
                              ],
                            )
                          : EmptyWidget2(
                              ontap: () {},
                            ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
