import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/presentation/home/components/app_bar.dart';
import 'package:florify/presentation/home/components/category_title.dart';
import 'package:florify/presentation/home/components/category_widget.dart';
import 'package:florify/presentation/home/components/home_categories.dart';
import 'package:florify/presentation/home/components/home_products.dart';
import 'package:florify/presentation/home/components/stores_products.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/error_widget.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = locator<HomeCubit>();
        cubit.fetchCategories();
        return cubit;
      },
      child: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {},
        child: Buildable<HomeCubit, HomeState, HomeBuildableState>(
          properties: (buildable) => [
            buildable.categories,
            buildable.loading,
            buildable.success,
            buildable.failed,
            buildable.error,
            buildable.selectedCategory
          ],
          builder: (context, state) {
            if (state.loading) {
              return const LoaderWidget();
            }
            if (state.failed) {
              return ErrorWidgetCustom(
                ontap: () {
                  BlocProvider.of<HomeCubit>(context).fetchCategories();
                },
              );
            }
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.getW(context) * 0.019),
              child: CustomScrollView(
                slivers: [
                  _buildAppBar(),
                  _buildCategories(state.categories),
                  _buildCategoryTitle("Kategoriyalar"),
                  _buildPadding(context, 0.016),
                  _buildHomeCategories(
                    state.categories,
                    state.selectedCategory,
                  ),
                  _buildPadding(context, 0.012),
                  _buildHomeProducts(
                    state.categories,
                    state.selectedCategory,
                  ),
                  _buildPadding(context, 0.02),
                  _buildCategoryTitle("Magazinlar"),
                  _buildPadding(context, 0.016),
                  _buildStores()
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return const HomeAppBar();
  }

  Widget _buildCategories(List<CategoryModel> categories) {
    return CategoryWidget(
      categories: categories,
    );
  }

  Widget _buildCategoryTitle(String title) {
    return  CategoryTitle(title: title,);
  }

  Widget _buildHomeProducts(List<CategoryModel> categories, int index) {
    return HomeProducts(
      categories: categories,
      selectedCategory: index,
    );
  }

  Widget _buildHomeCategories(List<CategoryModel> categories, int index) {
    return HomeCategories(
      categories: categories,
      selectedCategory: index,
    );
  }

  Widget _buildPadding(BuildContext context, double height) {
    return SliverToBoxAdapter(
      child: MyPadding(
        height: AppSizes.getH(context) * height,
      ),
    );
  }

  Widget _buildStores() {
    return const HomeStoresProduct();
  }
}
