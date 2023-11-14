part of 'details_cubit.dart';

abstract class DetailsState {}

@freezed
class DetailsBuildable extends DetailsState with _$DetailsBuildable {
  const factory DetailsBuildable({
    @Default(false) bool loading,
    @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    @Default(false) bool isUser,
    @Default(0) int currentIndex,
    @Default(0) int selectedTab,
    ProductDetailModel? product,
    @Default(false) bool savedToCard,
    @Default(false) bool product_is_exist_in_card,
    @Default([]) List<RecentlyProductModel> recentlyProducts,
    @Default([]) List<String> likeIds,
    @Default([]) List<FavoriteModel> likes,
  }) = _DetailsBuildable;
}
