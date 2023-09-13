import 'package:florify/di/injection.dart';
import 'package:florify/presentation/product_details/cubit/details_cubit.dart';
import 'package:florify/presentation/product_details/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => locator<DetailsCubit>(),
        child: BlocListener<DetailsCubit, DetailsState>(
          listener: (context, state) {},
          child: const ProductDetailsView(),
        ),
      ),
    );
  }
}
