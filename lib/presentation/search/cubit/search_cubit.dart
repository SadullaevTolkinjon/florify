import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  fetch(int page) async {
    try {
      // final customers = await _repository.getCustomers(_search, page, _size);
      // final nextPageKey = customers.length < _size ? null : page + 1;
      // build(
      //   (buildable) => buildable.copyWith(
      //     customers: [...buildable.customers ?? [], ...customers],
      //     nextPageKey: nextPageKey,
      //     error: null,
      //   ),
      // );
    } catch (error) {
      // build((buildable) => buildable.copyWith(error: error));
    }
  }

  onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      _search = query;
      build((buildable) => const SearchBuildableState());
    });
  }

  dispose() {
    _debounce?.cancel();
  }
}
