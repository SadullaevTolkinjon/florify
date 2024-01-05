part of 'order_history_cubit.dart';

abstract class OrderHistoryState {}

@freezed
class OrderHistoryBuildable extends OrderHistoryState
    with _$OrderHistoryBuildable {
  const factory OrderHistoryBuildable({
    @Default(false) bool loading,
    @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    @Default(0) int selectedTab,
    @Default(false) bool isExpanded,
     @Default([]) List<OrderProduct> orders,
      @Default([]) List<OrderProduct> active_orders,
  }) = _OrderHistoryBuildable;
}
