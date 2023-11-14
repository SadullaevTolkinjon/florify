import 'dart:convert';

import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
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
      : super(const HomeBuildableState()){
        fetchCategories();
      }

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
      List<String> likes = await _preference.getLikes();

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
      List<Salesman> salesman = await _service.fetchStores();
      build((buildable) => buildable.copyWith(
          loading: false, success: true, failed: false, stores: salesman));
    } catch (e) {
      build((buildable) =>
          buildable.copyWith(loading: false, success: false, failed: true));
    }
  }

  checkLikes() async {
    List<String> likes = await _preference.getLikes();
    print("---------------");
    print(likes);
    build((buildable) => buildable.copyWith(likeIds: likes));
  }

  disLike(int productId) async {
    build((buildable) => buildable.copyWith());
    try {
      UserModel user = await getUser();
      await _repository.dislike(productId, user.client!.id!);
      List<FavoriteModel> likes = await _service.fetchLikes(user.client!.id!);
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
      await _repository.pressLike(productId, user.client!.id!);
      List<FavoriteModel> likes = await _service.fetchLikes(user.client!.id!);
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
}
