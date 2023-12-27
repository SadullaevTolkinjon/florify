import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/domain/model/order_history/order_history_model.dart';
import 'package:florify/domain/model/user/user_model.dart';
import 'package:florify/domain/repository/main_repository.dart';
import 'package:florify/presentation/widgets/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_history_state.dart';
part 'order_history_cubit.freezed.dart';

@injectable
class OrderHistoryCubit
    extends BuildableCubit<OrderHistoryState, OrderHistoryBuildable> {
  final MainRepository _repository;
  final TokenPreference _preference;
  OrderHistoryCubit(this._repository, this._preference)
      : super(const OrderHistoryBuildable());
  selectTab(int index) {
    build((buildable) => buildable.copyWith(selectedTab: index));
  }

  showProduct(bool value) {
    build((buildable) => buildable.copyWith(isExpanded: value));
  }

  fetchOrderHistory() async {
    build((buildable) =>
        buildable.copyWith(loading: true, failed: false, success: false));
    try {
    

      final OrderHistoryModel orders =
          await _repository.fetchOrderHistory();
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          failed: false,
          orders: orders,
        ),
      );
    } catch (e) {
      
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: false,
          failed: true,
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
}
