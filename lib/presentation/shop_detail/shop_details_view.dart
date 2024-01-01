import 'package:florify/constants/api/api_constants.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/shop_detail/cubit/shop_details_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/error_widget.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopDetailsView extends StatelessWidget {
  const ShopDetailsView({super.key, required this.salesmanId});
  final String salesmanId;
  @override
  Widget build(BuildContext context) {
    return BlocListener<ShopDetailsCubit, ShopDetailsState>(
      listener: (context, state) {},
      child:
          Buildable<ShopDetailsCubit, ShopDetailsState, ShopDetailsBuildable>(
        properties: (buildable) => [
          buildable.loading,
          buildable.failed,
          buildable.error,
          buildable.success
        ],
        builder: (context, state) {
          if (state.loading) {
            return const LoaderWidget();
          }
          if (state.failed) {
            return ErrorWidgetCustom(ontap: () {
              context.read<ShopDetailsCubit>().fetch(salesmanId);
            });
          }
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                leading:  GestureDetector(child: const Icon(Icons.arrow_back),onTap: (){
                  Navigator.pop(context);
                },),
                expandedHeight: AppSizes.geth(context, 0.22),
                pinned: true,
                floating: true,
                snap: true,
                elevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    state.shop!.username ?? "Unkonwn shop",
                    style: TextStyle(color: ColorConstants.black),
                  ),
                  centerTitle: true, // This centers the title
                  background: Image.network(
                    "${ApiConstants.baseUrl}${state.shop!.image}",
                    fit: BoxFit.cover,
                  ),
                ),
                // Other SliverAppBar properties
                // ...
              ),
              // Other slivers or content for the CustomScrollView
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  },
                  childCount: 50,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
