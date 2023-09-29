import 'package:bloc/bloc.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/service/main_serivce.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'all_category_product_state.dart';
part 'all_category_product_cubit.freezed.dart';

@injectable
class AllCategoryProductCubit extends BuildableCubit<AllCategoryProductState,
    AllCategoryProductBuildable> {
  final MainService _service;
  AllCategoryProductCubit(this._service)
      : super(const AllCategoryProductBuildable());
  fetchProducts(String id) async {
    build((buildable) => buildable.copyWith(
          loading: true,
        ));
    try {
      CategoryModel data = await _service.getCategoryProducts(id);
      build((buildable) => buildable.copyWith(
          loading: false, success: true, failed: false, data: data));
    } catch (e) {
      print(e);
      build(
        (buildable) => buildable.copyWith(
            loading: false, success: false, failed: true, error: e.toString()),
      );
    }
  }
}
