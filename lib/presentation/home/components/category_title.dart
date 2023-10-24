
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
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
  }
}
