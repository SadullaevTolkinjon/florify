import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/order_history/components/order_history_product.dart';
import 'package:florify/presentation/order_history/cubit/order_history_cubit.dart';
import 'package:florify/presentation/product_details/components/desc_title_btn.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/error_widget.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderHistoryView extends StatefulWidget {
  const OrderHistoryView({super.key});

  @override
  State<OrderHistoryView> createState() => _OrderHistoryViewState();
}

class _OrderHistoryViewState extends State<OrderHistoryView> {
  @override
  void initState() {
    context.read<OrderHistoryCubit>().fetchOrderHistory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        centerTitle: true,
        title: const Text("Mening buyurtmalarim"),
      ),
      body: BlocListener<OrderHistoryCubit, OrderHistoryState>(
        listener: (context, state) {},
        child: Buildable<OrderHistoryCubit, OrderHistoryState,
            OrderHistoryBuildable>(
          properties: (buildable) => [
            buildable.selectedTab,
            buildable.loading,
            buildable.failed,
            buildable.error,
            buildable.orders,
          ],
          builder: (context, state) {
            if (state.loading) {
              return const LoaderWidget();
            }
            if (state.failed) {
              return ErrorWidgetCustom(
                ontap: () {
                  BlocProvider.of<OrderHistoryCubit>(context)
                      .fetchOrderHistory();
                },
              );
            }
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.geth(context, 0.02),
              ),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: CommentsTitleBtn(
                            ontap: () {
                              BlocProvider.of<OrderHistoryCubit>(context)
                                  .selectTab(0);
                            },
                            title: "Faol buyurtmalar",
                            isSelected: state.selectedTab == 0 ? true : false,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: CommentsTitleBtn(
                            ontap: () {
                              BlocProvider.of<OrderHistoryCubit>(context)
                                  .selectTab(1);
                            },
                            title: "Hammasi",
                            isSelected: state.selectedTab == 1 ? true : false,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(
                      vertical: AppSizes.geth(context, 0.02),
                    ),
                    sliver: SliverToBoxAdapter(
                      child: state.selectedTab == 0
                          ? Wrap(
                              runSpacing: AppSizes.geth(context, 0.01),
                              spacing: AppSizes.geth(context, 0.01),
                              children: [
                                ...List.generate(
                                 state.orders!.data!.orders!.length,
                                  (index) => OrderHistoryProduct(
                                    isActive: false,
                                    order: state.orders!.data!.orders![index],
                                  ),
                                )
                              ],
                            )
                          : Wrap(
                              runSpacing: AppSizes.geth(context, 0.01),
                              spacing: AppSizes.geth(context, 0.01),
                              children: [
                                ...List.generate(
                                  state.orders!.data!.orders!.length,
                                  (index) => OrderHistoryProduct(
                                    isActive: true,
                                    order: state.orders!.data!.orders![index],
                                  ),
                                )
                              ],
                            ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
