import 'package:flutter/material.dart';

class KorzinaAppBar extends StatelessWidget {
  const KorzinaAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      pinned: true,
      centerTitle: true,
      title: Text("Savatcha"),
    );
  }
}
