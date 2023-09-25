import 'package:bloc/bloc.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_history_state.dart';
part 'order_history_cubit.freezed.dart';

@injectable
class OrderHistoryCubit
    extends BuildableCubit<OrderHistoryState, OrderHistoryBuildable> {
  OrderHistoryCubit() : super(const OrderHistoryBuildable());
  selectTab(int index) {
    build((buildable) => buildable.copyWith(selectedTab: index));
  }

  showProduct(bool value) {
    build((buildable) => buildable.copyWith(isExpanded: value));
  }
}
