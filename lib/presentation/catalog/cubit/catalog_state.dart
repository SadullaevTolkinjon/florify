part of 'catalog_cubit.dart';

abstract class CatalogState {}

@freezed
class CatalogBuildable extends CatalogState with _$CatalogBuildable {
  const factory CatalogBuildable({
    @Default(false) bool loading,
    @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    @Default([]) List<CategoryModel> data,
  }) = _CatalogBuildablee;
}

class LoadingState extends CatalogState {}

class ErrorCatalogState extends CatalogState {
  String msg;
  ErrorCatalogState(this.msg);
}

class SuccessCatalogState extends CatalogState {
  List<CategoryModel> data;
  SuccessCatalogState(this.data);
}
