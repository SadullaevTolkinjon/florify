import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/service/main_serivce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends BuildableCubit<HomeState, HomeBuildableState> {
  final MainService _service;
  HomeCubit(this._service) : super(const HomeBuildableState());

  changeTabs(int index) {
    build(
      (buildable) => buildable.copyWith(currentIndex: index),
    );
  }

  Future fetchCategories() async {
    build(
      (buildable) => buildable.copyWith(loading: true),
    );
    try {
      List<CategoryModel> data = await _service.getCategories();
      build(
        (buildable) => buildable.copyWith(
            loading: false, success: true, failed: false, categories: data),
      );
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
            loading: false, success: false, failed: true, error: e.toString()),
      );
    }
  }
}
