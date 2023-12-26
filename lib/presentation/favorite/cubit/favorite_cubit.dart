import 'dart:convert';

import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/domain/model/favorite/favorite_model.dart';
import 'package:florify/domain/model/user/user_model.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/domain/service/main_serivce.dart';
import 'package:florify/presentation/favorite/cubit/favorite_notifier.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

@injectable
class FavoriteCubit extends BuildableCubit<FavoriteState, FavoriteBuildable> {
  final MainService _service;
  final TokenPreference _preference;
  final MainRepository _repository;
  FavoriteCubit(this._service, this._preference, this._repository)
      : super(const FavoriteBuildable());
  //final favoriteNotifier = FavoriteModelNotifier('_favorite', []);

  changeTabs(int index) {
    build(
      (buildable) => buildable.copyWith(
        failed: false,
        success: false,
        selectedTab: index,
      ),
    );
  }

  fetchLikes() async {
    build(
      (buildable) => buildable.copyWith(
        failed: false,
        success: false,
        loading: true,
      ),
    );
    UserModel user = await getUser();
    try {
      List<FavoriteModel> likes = await _service.fetchLikes(user.data!.client!.id!);
      await locator<MainRepository>().setLikeIds(likes);
      List<String> listJson =
          likes.map((product) => jsonEncode(product.toJson())).toList();
      await _preference.setFavorites(listJson);
      build(
        (buildable) => buildable.copyWith(
          failed: false,
          success: true,
          loading: false,
          likes: likes,
        ),
      );
    } catch (e) {
      print(e);
      build(
        (buildable) => buildable.copyWith(
          failed: true,
          success: false,
          loading: false,
          error: e.toString(),
        ),
      );
    }
  }

  fetchLikes2() async {
    build(
      (buildable) => buildable.copyWith(),
    );
    UserModel user = await getUser();
    try {
      List<FavoriteModel> likes = await _service.fetchLikes(user.data!.client!.id!);
      await locator<MainRepository>().setLikeIds(likes);
      List<String> listJson =
          likes.map((product) => jsonEncode(product.toJson())).toList();
      await _preference.setFavorites(listJson);

      build(
        (buildable) => buildable.copyWith(
          likes: likes,
        ),
      );
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          error: e.toString(),
        ),
      );
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

  disLike(int productId) async {
    build((buildable) => buildable.copyWith());
    try {
      UserModel user = await getUser();
      await _repository.dislike(productId, user.data!.client!.id!);
      List<FavoriteModel> likes = await _service.fetchLikes(user.data!.client!.id!);
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
      List<FavoriteModel> likes = await _service.fetchLikes(user.data!.client!.id!);
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

  checkLikeIds() async {
    List<String> likeIds = await _preference.getLikes() ?? [];
    build((buildable) => buildable.copyWith(
          likeIds: likeIds,
        ));
  }

  renderToProductJson(List<String> listJson) {
    List<FavoriteModel> renderedList = listJson
        .map(
          (json) => FavoriteModel.fromJson(jsonDecode(json)),
        )
        .toList();
    return renderedList;
  }

  Future<List<FavoriteModel>> getfavorites() async {
    List<String> favorites = await _preference.getFavorites() ?? [];
    return renderToProductJson(favorites);
  }
}
