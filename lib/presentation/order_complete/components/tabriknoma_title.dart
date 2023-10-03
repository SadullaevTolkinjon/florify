import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/images/images_const.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class TabriknomaTitle extends StatelessWidget {
  const TabriknomaTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Text(
            "Tabriknoma",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: AppSizes.geth(context, 0.019),
                fontWeight: FontWeight.bold),
          ),
          MyPadding(
            width: AppSizes.geth(context, 0.01),
          ),
          SizedBox(
            height: AppSizes.geth(context, 0.024),
            width: AppSizes.geth(context, 0.024),
            child: Image.asset(ImagesConst.tabriknoma),
          )
        ],
      ),
    );
  }
}
