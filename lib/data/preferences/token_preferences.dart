import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable()
class TokenPreference {
  final SharedPreferences _sharedPreferences;

  TokenPreference(this._sharedPreferences);
  final String _key = "user";
  final String _cardProducts = "cardProducts";
  final String _likes = "like";
  final String _splash = "splash";
  setUser(String value) async {
    await _sharedPreferences.setString(_key, value);
  }

  getUser() async {
    return _sharedPreferences.getString(_key);
  }

  removeUser() async {
    await _sharedPreferences.remove(_key);
  }

  setCardProducts(List<String> value) async {
    await _sharedPreferences.setStringList(_cardProducts, value);
  }

  getCardProducts() async {
    return _sharedPreferences.getStringList(_cardProducts);
  }

  removeCardProducts() async {
    await _sharedPreferences.remove(_cardProducts);
  }

  setLikes(List<String> value) async {
    await _sharedPreferences.setStringList(_likes, value);
  }

  Future getLikes() async {
    return _sharedPreferences.getStringList(_likes);
  }

  setSplash(int value) async {
    await _sharedPreferences.setInt(_splash, value);
  }

  Future getSplash() async {
    return _sharedPreferences.getInt(_splash);
  }
}
