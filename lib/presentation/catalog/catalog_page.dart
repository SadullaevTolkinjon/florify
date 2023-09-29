import 'package:florify/di/injection.dart';
import 'package:florify/presentation/catalog/catalog_view.dart';
import 'package:florify/presentation/catalog/cubit/catalog_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = locator<CatalogCubit>();
        cubit.fetchCategories();
        return cubit;
      },
      child: const CatalogView(),
    );
  }
}
