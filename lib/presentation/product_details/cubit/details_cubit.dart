import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:florify/domain/service/main_serivce.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'details_state.dart';
part 'details_cubit.freezed.dart';

@injectable
class DetailsCubit extends BuildableCubit<DetailsState, DetailsBuildable> {
  final MainService _service;
  DetailsCubit(this._service) : super(const DetailsBuildable());
  changeImages(int index) {
    build((buildable) => buildable.copyWith(currentIndex: index));
  }

  selectTabs(index) {
    build((buildable) => buildable.copyWith(selectedTab: index));
  }

  Future fetchProduct(int productId) async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      var data = await _service.getProductDetails(productId);
      build((buildable) => buildable.copyWith(
          loading: false, success: true, failed: false, product: data));
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
            loading: false, success: false, failed: true, error: e.toString()),
      );
    }
  }

  share(String info) {
  //  Share.share('check out my website https://example.com');
  }
}
