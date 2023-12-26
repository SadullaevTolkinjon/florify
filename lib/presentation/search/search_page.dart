import 'package:florify/di/injection.dart';
import 'package:florify/presentation/search/cubit/search_cubit.dart';
import 'package:florify/presentation/search/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SearchCubit>(),
      child: const SearchView(),
    );
  }
}
