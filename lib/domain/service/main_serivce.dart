import 'dart:convert';

import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/domain/model/card_product_model/card_product_model.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/favorite/favorite_model.dart';
import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:florify/domain/model/recently/recently_product_model.dart';
import 'package:injectable/injectable.dart';

import '../../data/api/main_api.dart';

@Injectable()
class MainService {
  final MainApi _mainApi;
  final TokenPreference _preference;
  MainService(this._mainApi, this._preference);

  getCategories() async {
    final response = await _mainApi.getCategories();
    var list = jsonDecode(response.body);
    var data = list["data"]["categories"];

    return List<CategoryModel>.from(data.map((e) => CategoryModel.fromJson(e)));
  }

  getCategoryProducts(String id) async {
    final response = await _mainApi.getCategoryProducts(id);
    var data = jsonDecode(response.body);
    return CategoryModel.fromJson(data["data"]["category"]);
  }

  getProductDetails(int id) async {
    final response = await _mainApi.fetchProductDetails(id);
    var data = jsonDecode(response.body);
    return ProductDetailModel.fromJson(data["data"][
      ""
    ]);
  }

  renderToProductJson(List<String> listJson) {
    List<CardProduct> renderedList = listJson
        .map(
          (json) => CardProduct.fromJson(jsonDecode(json)),
        )
        .toList();
    return renderedList;
  }

  Future<List<String>> getLocalCardProducts() async {
    List<String> data = await _preference.getCardProducts() ?? [];

    return data;
  }

  fetchLikes(String userId) async {
    final response = await _mainApi.fetchLikes(userId);

    var list = jsonDecode(response.body);
    return List<FavoriteModel>.from(
        list["data"]["likes"].map((e) => FavoriteModel.fromJson(e)));
  }

  fetchStores() async {
    final response = await _mainApi.fetchStores();

    var data = jsonDecode(response.body);
    return List<Salesman>.from(
        data["data"]["salesmans"].map((e) => Salesman.fromJson(e)));
  }

  fetchRecentlyProducts(String clientID) async {
    final response = await _mainApi.fetchRecentlyProducts(clientID);

    Iterable list = jsonDecode(response.body);
    return List<RecentlyProductModel>.from(
        list.map((e) => RecentlyProductModel.fromJson(e)));
  }
  // Future getCustomers(int page, int id) async {
  //   final response = await _mainApi.getBooks(page, id);
  //   var data = jsonDecode(response.body);
  //   return BookPaginationModel.fromJson(data);
  // }
  //  Future fetchPaymentCards() async {
  //   final response = await _mainApi.fetchPayemntCards();
  //   var data = jsonDecode(response.body);
  //   return PaymentModel.fromJson(data);
  // }
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
