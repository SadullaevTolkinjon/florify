import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:flutter/material.dart';

class TitleRowComplete extends StatelessWidget {
  const TitleRowComplete({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontSize: AppSizes.geth(context, 0.019),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
