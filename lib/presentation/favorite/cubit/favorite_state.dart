part of 'favorite_cubit.dart';

abstract class FavoriteState {}

@freezed
class FavoriteBuildable extends FavoriteState with _$FavoriteBuildable {
  const factory FavoriteBuildable({
    @Default(false) bool loading,
    @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    @Default(0) int selectedTab,
    @Default([]) List<FavoriteModel> likes,
     @Default([]) List<String>? likeIds,
  }) = _FavoriteBuildable;
}
