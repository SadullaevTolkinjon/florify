import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/presentation/favorite/components/store_container.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeStoresProduct extends StatelessWidget {
  const HomeStoresProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = locator<HomeCubit>();
        cubit.fetchStores();
        return cubit;
      },
      child: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {},
        child: Buildable<HomeCubit, HomeState, HomeBuildableState>(
          properties: (buildable) => [
            buildable.loading,
            buildable.failed,
            buildable.stores,
          ],
          builder: (context, state) {
            if (state.loading) {
              return const SliverToBoxAdapter(
                child: LoaderWidget(),
              );
            }
            if (state.failed) {
              return const SliverToBoxAdapter();
            }

            return SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) => StoreContainer(
                  store: state.stores[index],
                  ontap: () {
                    
                  },
                ),
                childCount: state.stores.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: AppSizes.getH(context) * 0.285,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
            );
          },
        ),
      ),
    );
  }
}
