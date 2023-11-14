import 'dart:convert';

import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/favorite/favorite_model.dart';
import 'package:florify/domain/model/user/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:florify/data/api/main_api.dart';

@Injectable()
class MainRepository {
  final MainApi _mainApi;
  final TokenPreference _preference;
  MainRepository(this._mainApi, this._preference);
  getCategories() async {
    final response = await _mainApi.getCategories();
    Iterable list = jsonDecode(response.body);
    return List<CategoryModel>.from(list.map((e) => CategoryModel.fromJson(e)));
  }

  verfyPhoneNumber(String phone) async {
    final response = await _mainApi.verfyPhone(phone);
    var data = jsonDecode(response.body);
    return data;
  }

  phoneValidator(String value) {
    if (value.isEmpty) {
      return "Shouldn't be empty";
    } else if (value.length < 12) {
      return "The phone must be at least 12 characters";
    }
  }

  pinValidator(String value) {
    if (value.isEmpty) {
      return "Shouldn't be empty";
    }
  }

  verfySms(String phone, String sms) async {
    final response = await _mainApi.verfySms(phone, sms);
    var data = jsonDecode(response.body);
    return UserModel.fromJson(data);
  }

  removePlus(String input) {
    List list1 = [];
    list1 = input.split("");
    if (list1[0] == "+") {
      list1.removeAt(0);
      return list1.join();
    } else {
      return list1.join();
    }
  }

  getUser() async {
    var json = await _preference.getUser();
    return json;
  }

  dislike(int productId, String clientId) async {
    final response = await _mainApi.dislike(productId, clientId);
    var data = jsonDecode(response.body);
    return data;
  }

  pressLike(int productId, String clientId) async {
    final response = await _mainApi.pressLike(productId, clientId);
    var data = jsonDecode(response.body);
    return data;
  }

  setLikeIds(List<FavoriteModel> likes) async {
    List<String> ids = [];
    for (var element in likes) {
      ids.add(element.product_id.toString());
    }
    await _preference.setLikes(ids);
  }

  renderToProductJson(List<String> listJson) {
    List<FavoriteModel> renderedList = listJson
        .map(
          (json) => FavoriteModel.fromJson(jsonDecode(json)),
        )
        .toList();
    return renderedList;
  }

  // Future<List<Stat>> getStats(int page, int size) async {
  //   final response = await _mainApi.getStats(page, size);
  //   Iterable list = jsonDecode(response.body);
  //   return List<Stat>.from(list.map((e) => Stat.fromJson(e)));
  // }

  // Future<List<Customer>> getCustomers(
  //   String? search,
  //   int page,
  //   int size,
  // ) async {
  //   final response = await _mainApi.getCustomers(search, page, size);
  //   Iterable list = jsonDecode(response.body);
  //   return List<Customer>.from(list.map((e) => Customer.fromJson(e)));
  // }

  // Future<List<Purchase>> getPurchases(
  //   String customerId,
  //   int page,
  //   int size,
  // ) async {
  //   final response = await _mainApi.getPurchases(customerId, page, size);
  //   Iterable list = jsonDecode(response.body);
  //   return List<Purchase>.from(list.map((e) => Purchase.fromJson(e)));
  // }

  // Future<Purchase> createPurchase(
  //   String customerId,
  //   num amount,
  //   num rate,
  //   num? withdrawn,
  //   String? code,
  // ) async {
  //   final response = await _mainApi.createPurchase(
  //     customerId,
  //     amount,
  //     rate,
  //     withdrawn,
  //     code,
  //   );
  //   return Purchase.fromJson(jsonDecode(response.body));
  // }

  // Future<Customer> createCustomer(
  //   String phone,
  //   String name,
  //   String surname,
  // ) async {
  //   final response = await _mainApi.createCustomer(phone, name, surname);
  //   return Customer.fromJson(jsonDecode(response.body));
  // }

  // Future<Customer> addCustomer(String id) async {
  //   final response = await _mainApi.addCustomer(id);
  //   return Customer.fromJson(jsonDecode(response.body));
  // }

  // confirmPurchase(String customerId, num amount, num withdrawn) async {
  //   await _mainApi.confirmPurchase(customerId, withdrawn, amount);
  // }
}
