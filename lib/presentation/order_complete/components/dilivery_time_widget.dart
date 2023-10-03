import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/presentation/order_complete/components/select_deliviry_time_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class DeliveryTimeWidget extends StatelessWidget {
  const DeliveryTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectDeliveryTimeBtn(
            title: "Boshqa vaqtga yetkazib berish",
            subtitle: "Sana va vaqtni tanlang",
            onTap: () {},
            isSelected: false,
            withCash: false,
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.02),
          ),
          SelectDeliveryTimeBtn(
            title: "Tezroq yetkazib berish",
            subtitle: "3 soat ichida",
            onTap: () {},
            isSelected: true,
            withCash: true,
          )
        ],
      ),
    );
  }
}
