
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    super.key,required this.title
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: Text(
        title,
        style:  TextStyle(fontSize: AppSizes.geth(context, 0.021), fontWeight: FontWeight.w600),
      ),
    );
  }
}
