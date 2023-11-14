part of 'all_category_product_cubit.dart';

abstract class AllCategoryProductState {}

@freezed
class AllCategoryProductBuildable extends AllCategoryProductState
    with _$AllCategoryProductBuildable {
  const factory AllCategoryProductBuildable({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    CategoryModel? data,
    @Default([]) List<String> likeIds,
    @Default([]) List<FavoriteModel> likes,
  }) = _AllCategoryProductBuildable;
}
