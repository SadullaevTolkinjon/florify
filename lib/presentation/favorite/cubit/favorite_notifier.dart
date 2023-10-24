import 'dart:convert';

import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/domain/model/favorite/favorite_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteModelNotifier extends ValueNotifier<List<FavoriteModel>> {
  final String key;

  FavoriteModelNotifier(
    this.key,
    List<FavoriteModel> initialValue,
  ) : super(initialValue);

  // Load the initial value from SharedPreferences
  Future<void> loadInitialValue() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getStringList(key);

    if (jsonString != null) {
      List<FavoriteModel> renderedList = jsonString
          .map(
            (json) => FavoriteModel.fromJson(jsonDecode(json)),
          )
          .toList(); // Use your deserialization logic
      value = renderedList;
    }
  }

  Future<void> setValue(List<FavoriteModel> newFavorites) async {
    value = newFavorites;
    List<String> listJson =
        value.map((product) => jsonEncode(product.toJson())).toList();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(key, listJson);
    
  }
}
