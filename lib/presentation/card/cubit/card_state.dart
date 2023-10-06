part of 'card_cubit.dart';

abstract class CardState {}

@freezed
class CardBuildableState extends CardState with _$CardBuildableState {
  const factory CardBuildableState({
    @Default(false) bool loading,
    @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    @Default([]) List<CardProduct>? prodcuts,
    @Default(0) int allPrice,
    @Default(0) int price,
  }) = _CardBuildableState;
}
