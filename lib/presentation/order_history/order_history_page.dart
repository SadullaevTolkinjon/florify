import 'package:florify/di/injection.dart';
import 'package:florify/presentation/order_history/cubit/order_history_cubit.dart';
import 'package:florify/presentation/order_history/order_history_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<OrderHistoryCubit>(),
      child: const OrderHistoryView(),
    );
  }
}
