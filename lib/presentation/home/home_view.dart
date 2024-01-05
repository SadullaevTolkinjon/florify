import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/presentation/home/components/app_bar.dart';
import 'package:florify/presentation/home/components/category_title.dart';
import 'package:florify/presentation/home/components/category_widget.dart';
import 'package:florify/presentation/home/components/home_categories.dart';
import 'package:florify/presentation/home/components/home_products.dart';
import 'package:florify/presentation/home/components/stores_products.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/empty_widget.dart';
import 'package:florify/presentation/widgets/error_widget.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeBuildableState) {
          currentIndex = state.selectedCategory;
        }
      },
      child: Buildable<HomeCubit, HomeState, HomeBuildableState>(
        properties: (buildable) => [
          buildable.categories,
          buildable.loading,
          buildable.success,
          buildable.failed,
          buildable.error,
          buildable.selectedCategory,
          buildable.likeIds
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
                // _buildCategories(state.categories),
                CategoryWidget(categories: state.categories),
                _buildCategoryTitle("Kategoriyalar"),
                _buildPadding(context, 0.016),

                HomeCategories(
                    categories: state.categories,
                    selectedCategory: state.selectedCategory),
                _buildPadding(context, 0.012),
                state.categories.isNotEmpty
                    ? HomeProducts(
                        likes: state.likeIds,
                        categoryId:
                            state.categories[state.selectedCategory].id!,
                        categoryName:
                            state.categories[state.selectedCategory].uz ?? "",
                      )
                    : SliverToBoxAdapter(
                        child: EmptyWidget2(
                          ontap: () {},
                        ),
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
    );
  }

  Widget _buildProducts(
      String categoryId, List<String> likeIds, String categoryName) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, __) {
      return HomeProducts(
        likes: likeIds,
        categoryId: categoryId,
        categoryName: categoryName,
      );
    });
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
    return CategoryTitle(
      title: title,
    );
  }

  // Widget _buildHomeProducts(
  //     List<CategoryModel> categories, int index, List<String> likes) {
  //   return HomeProducts(
  //     likes: likes,
  //     categoryId: categories[index].id!,
  //   );
  // }

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
