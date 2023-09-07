import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:florify/presentation/home/components/bottom_nav_bar.dart';
import 'package:florify/presentation/home/components/build_home_view.dart';
import 'package:florify/presentation/home/cubit/home_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {},
        child: Buildable<HomeCubit, HomeState, HomeBuildableState>(
          properties: (buildable) => [
            buildable.error,
            buildable.loading,
            buildable.currentIndex,
            buildable.success
          ],
          builder: (context, state) {
            return buildHomeUi(state.currentIndex);
          },
        ),
      ),
      bottomNavigationBar: builtBottomBar(),
    );
  }
}
