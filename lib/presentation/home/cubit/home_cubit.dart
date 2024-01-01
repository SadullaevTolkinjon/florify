import 'dart:convert';

import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/category_pagination_model/category_pagination_model.dart';
import 'package:florify/domain/model/favorite/favorite_model.dart';
import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:florify/domain/model/user/user_model.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/domain/service/main_serivce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends BuildableCubit<HomeState, HomeBuildableState> {
  final MainService _service;
  final TokenPreference _preference;
  final MainRepository _repository;
  HomeCubit(this._service, this._preference, this._repository)
      : super(const HomeBuildableState()) {
    fetchCategories();
  }

  changeTabs(int index) {
    build(
      (buildable) => buildable.copyWith(currentIndex: index),
    );
  }

  Future fetchCategories() async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      final data = await _service.getCategories();
      List<String> likes = await _preference.getLikes() ?? [];

      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          failed: false,
          categories: data,
          likeIds: likes,
        ),
      );
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
            loading: false, success: false, failed: true, error: e.toString()),
      );
    }
  }

  selectCategory(int index) {
    build(
      (buildable) => buildable.copyWith(selectedCategory: index),
    );
  }

  fetchStores() async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      final List<Salesman> salesman = await _service.fetchStores();
      print("-----------------------");
      print(salesman);
      build((buildable) => buildable.copyWith(
          loading: false, success: true, failed: false, stores: salesman));
    } catch (e) {
      build((buildable) =>
          buildable.copyWith(loading: false, success: false, failed: true));
    }
  }

  checkLikes() async {
    List<String> likes = await _preference.getLikes() ?? [];

    build((buildable) => buildable.copyWith(likeIds: likes));
  }

  disLike(int productId) async {
    build((buildable) => buildable.copyWith());
    try {
      UserModel user = await getUser();
      await _repository.dislike(productId, user.data!.client!.id!);
      List<FavoriteModel> likes =
          await _service.fetchLikes(user.data!.client!.id!);
      await locator<MainRepository>().setLikeIds(likes);
      List<String> likeIds = await _preference.getLikes() ?? [];
      List<String> listJson =
          likes.map((product) => jsonEncode(product.toJson())).toList();
      await _preference.setFavorites(listJson);

      build(
        (buildable) => buildable.copyWith(
          likes: likes,
          likeIds: likeIds,
        ),
      );
    } catch (e) {
      build((buildable) => buildable.copyWith());
    }
  }

  pressLike(int productId) async {
    build((buildable) => buildable);
    try {
      UserModel user = await getUser();
      await _repository.pressLike(productId, user.data!.client!.id!);
      List<FavoriteModel> likes =
          await _service.fetchLikes(user.data!.client!.id!);
      await locator<MainRepository>().setLikeIds(likes);

      List<String> likeIds = await _preference.getLikes() ?? [];
      List<String> listJson =
          likes.map((product) => jsonEncode(product.toJson())).toList();
      await _preference.setFavorites(listJson);

      build(
        (buildable) => buildable.copyWith(
          likes: likes,
          likeIds: likeIds,
        ),
      );
    } catch (e) {
      build((buildable) => buildable.copyWith());
    }
  }

  getUser() async {
    var data = await _repository.getUser();
    if (data == null) {
      return null;
    } else {
      UserModel user = UserModel.fromJson(jsonDecode(data));
      return user;
    }
  }

  final int pageSize = 10;
  Future fetch(int pageKey, String categoryId) async {
    try {
      final CategoryPaginationModel data =
          await _repository.fetchCategoryProducts(categoryId, pageKey);
    

      int? nextPageKey = data.data!.records!.isNotEmpty ? pageKey + 1 : null;
      print("---------------------------??????????");
      print("nextpage key ${nextPageKey}");
      build(
        (buildable) => buildable.copyWith(
          nextPageKey: nextPageKey,
          products: data.data!.records??[],
          pagingError: null,
        ),
      );
    } catch (e) {
      build((buildable) => buildable.copyWith(pagingError: e,nextPageKey: null));
    }
  }
}
