import 'package:bloc/bloc.dart';
import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'shop_details_state.dart';
part 'shop_details_cubit.freezed.dart';

@injectable
class ShopDetailsCubit
    extends BuildableCubit<ShopDetailsState, ShopDetailsBuildable> {
  final MainRepository _repository;
  ShopDetailsCubit(this._repository) : super(const ShopDetailsBuildable());

  fetch(String salesmanId) async {
    build((buildable) =>
        buildable.copyWith(loading: true, failed: false, success: false));

    try {
   final Salesman shop =   await _repository.fetchShopDetails(salesmanId);
      
      build((buildable) =>
          buildable.copyWith(loading: false, success: true, failed: false,shop: shop));
    } catch (e) {
      build((buildable) => buildable.copyWith(
          loading: false, success: false, failed: true, error: e.toString()));
    }
  }
}
