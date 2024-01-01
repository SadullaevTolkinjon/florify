import 'package:florify/constants/color/color_const.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/presentation/shop_detail/cubit/shop_details_cubit.dart';
import 'package:florify/presentation/shop_detail/shop_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopDetailsPage extends StatelessWidget {
  const ShopDetailsPage({super.key,required this.salesmanId});
final String salesmanId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocProvider(
      create: (context) {
        var cubit = locator<ShopDetailsCubit>();
        cubit.fetch(salesmanId);
        return cubit;
      },
      child:  ShopDetailsView(salesmanId: salesmanId,),
    ));
  }
}
