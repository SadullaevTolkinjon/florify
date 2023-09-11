import 'package:florify/presentation/card/card_page.dart';
import 'package:florify/presentation/catalog/catalog_page.dart';
import 'package:flutter/material.dart';
import 'package:florify/presentation/favorite/favorite_page.dart';
import 'package:florify/presentation/home/home_view.dart';
import 'package:florify/presentation/profile/profile_page.dart';

buildHomeUi(int index) {
  switch (index) {
    case 0:
      return const HomeView();
    case 1:
      return const CatalogPage();
    case 2:
      return const CardPage();
    case 3:
      return const FavoritePapge();
    case 4:
      return const ProfilePage();
    default:
      return const SizedBox();
  }
}
