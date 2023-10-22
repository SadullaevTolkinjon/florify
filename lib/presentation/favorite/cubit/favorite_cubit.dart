import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/favorite/favorite_model.dart';
import 'package:florify/domain/model/user/user_model.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/domain/service/main_serivce.dart';
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
      List<FavoriteModel> likes = await _service.fetchLikes(user.client!.id!);
      await setLikeIds(likes);
      build(
        (buildable) => buildable.copyWith(
          failed: false,
          success: true,
          loading: false,
          likes: likes,
        ),
      );
    } catch (e) {
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

  getUser() async {
    var data = await _repository.getUser();
    if (data == null) {
      return null;
    } else {
      UserModel user = UserModel.fromJson(jsonDecode(data));
      return user;
    }
  }

  setLikeIds(List<FavoriteModel> likes) async {
    List<String> ids = [];
    for (var element in likes) {
      ids.add(element.product_id.toString());
    }
    await _preference.setLikes(ids);
  }

  disLike(int productId) async {
    build((buildable) => buildable);
    try {
      UserModel user = await getUser();
      await _repository.dislike(productId, user.client!.id!);
      List<FavoriteModel> likes = await _service.fetchLikes(user.client!.id!);
      await setLikeIds(likes);
      List<String> likeIds = await _preference.getLikes() ?? [];
      build((buildable) => buildable.copyWith(likes: likes, likeIds: likeIds));
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
      await setLikeIds(likes);
      List<String> likeIds = await _preference.getLikes() ?? [];
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
    build((buildable) => buildable.copyWith(likeIds: likeIds));
  }
}
