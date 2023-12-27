part of 'search_cubit.dart';

abstract class SearchState {}

@freezed
class SearchBuildableState extends SearchState with _$SearchBuildableState {
  const factory SearchBuildableState({
    @Default(false) bool loading,
    @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    @Default([]) List<Product>? products,
    int? nextPageKey,
    dynamic error,
  }) = _SearchBuildableState;
}
