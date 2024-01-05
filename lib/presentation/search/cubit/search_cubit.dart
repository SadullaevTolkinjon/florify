import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/search_pagination/search_pagination_model.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@injectable
class SearchCubit extends BuildableCubit<SearchState, SearchBuildableState> {
  final MainRepository _mainRepository;
  SearchCubit(this._mainRepository) : super(const SearchBuildableState());
  final int _size = 10;
  String _search = "";
  Timer? _debounce;
  fetch(int page, String query) async {
    try {
      final SearchPaginationModel products =
          await _mainRepository.fetchSearchProduct(query, page);

      int? nextPageKey = products.data!.records!.isNotEmpty ? page + 1 : null;
      build(
        (buildable) => buildable.copyWith(
          products: products.data!.records!,
          nextPageKey: nextPageKey,
          error: null,
        ),
      );
    } catch (error) {
      build((buildable) => buildable.copyWith(error: error, nextPageKey: null));
    }
  }

  onSearchChanged(String query, int page) async {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      print("-=======");
      fetch(page, query);
    });
  }

  dispose() {
    _debounce?.cancel();
  }
}
