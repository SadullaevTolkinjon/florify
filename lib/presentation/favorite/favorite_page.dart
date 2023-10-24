import 'package:florify/presentation/favorite/favorite_view.dart';
import 'package:flutter/material.dart';

class FavoritePapge extends StatelessWidget {
  const FavoritePapge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text("Tanlanganlar"),
        ),
        body: const FavoriteView());
  }
}
