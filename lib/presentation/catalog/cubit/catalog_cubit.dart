import 'package:bloc/bloc.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/service/main_serivce.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'catalog_state.dart';
part 'catalog_cubit.freezed.dart';

@injectable
class CatalogCubit extends BuildableCubit<CatalogState, CatalogBuildable> {
  final MainService _service;
  CatalogCubit(this._service) : super(const CatalogBuildable());
  Future fetchCategories() async {
    build(
      (buildable) => buildable.copyWith(loading: true),
    );
    try {
      List<CategoryModel> data = await _service.getCategories();
      build(
        (buildable) => buildable.copyWith(
            loading: false, success: true, failed: false, data: data),
      );
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
            loading: false, success: false, failed: true, error: e.toString()),
      );
    }
  }
}
