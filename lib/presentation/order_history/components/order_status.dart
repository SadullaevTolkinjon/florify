import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:flutter/widgets.dart';

import '../../../constants/color/color_const.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.geth(context, 0.11),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color:  isActive==true 
            ? ColorConstants.green.withOpacity(0.5)
            : ColorConstants.orange.withOpacity(0.5),
      ),
      padding: EdgeInsets.all(
        AppSizes.geth(context, 0.004),
      ),
      alignment: Alignment.center,
      child: Text(
        isActive==true ? "Faol buyurtma" : "Yetkazib berilgan",
        style: TextStyle(
          fontSize: AppSizes.geth(context, 0.012),
        ),
      ),
    );
  }
}
