import 'package:florify/di/injection.dart';
import 'package:florify/presentation/favorite/cubit/favorite_cubit.dart';
import 'package:florify/presentation/favorite/favorite_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritePapge extends StatelessWidget {
  const FavoritePapge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Tanlanganlar"),
      ),
      body: BlocProvider(
        create: (context) {
          var cubit = locator<FavoriteCubit>();
          if (cubit.getUser() != null) {
            cubit.fetchLikes();
          }
          return cubit;
        },
        child: BlocListener<FavoriteCubit, FavoriteState>(
          listener: (context, state) {},
          child: const FavoriteView(),
        ),
      ),
    );
  }
}
