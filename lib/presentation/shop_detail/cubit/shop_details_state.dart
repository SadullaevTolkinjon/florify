part of 'shop_details_cubit.dart';

abstract class ShopDetailsState {}

@freezed
class ShopDetailsBuildable extends ShopDetailsState
    with _$ShopDetailsBuildable {
  const factory ShopDetailsBuildable({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
 Salesman? shop,
    dynamic error,
  }) = _ShopDetailsBuildable;
}
