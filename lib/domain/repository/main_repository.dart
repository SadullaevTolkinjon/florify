import 'dart:convert';

import 'package:florify/data/api/dio_api.dart';
import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/domain/model/category_pagination_model/category_pagination_model.dart';
import 'package:florify/domain/model/favorite/favorite_model.dart';
import 'package:florify/domain/model/my_comments/my_comments_model.dart';
import 'package:florify/domain/model/order_history/order_history_model.dart';
import 'package:florify/domain/model/product_detail/product_details_model.dart';
import 'package:florify/domain/model/search_pagination/search_pagination_model.dart';
import 'package:florify/domain/model/user/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:florify/data/api/main_api.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

@Injectable()
class MainRepository {
  final MainApi _mainApi;
  final TokenPreference _preference;
  final ServiceApiExample _service;
  MainRepository(this._mainApi, this._preference, this._service);
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

  fetchProductComments(int productId) async {
    final response = await _mainApi.fetchProductComments(productId);
    var data = jsonDecode(response.body);
    return data;
  }

  fetchCategoryProducts(String categoryId, int page) async {
    final response = await _mainApi.fetchCategoryProducts(categoryId, page);
    var data = jsonDecode(response.body);
    return CategoryPaginationModel.fromJson(data);
  }

  fetchUserComments(String userId) async {
    final response = await _mainApi.fetchUserComments(userId);
    var data = jsonDecode(response.body);
    return MyCommmentsModel.fromJson(data);
  }

  deleteComment(String commentID) async {
    final response = await _mainApi.deleteComment(commentID);

    return response.data;
  }

  writeComment(int producId, int rating, String text, String clientId) async {
    final response =
        await _mainApi.writeComment(producId, rating, text, clientId);
    return response.body;
  }

  fetchOrderHistory() async {
    final response = await _mainApi.fetchOrderHistory();
    Iterable list = jsonDecode(response.body);
    return List<OrderProduct>.from(list.map((e) => OrderProduct.fromJson(e)));
  }

  fetchShopDetails(String salesmanId) async {
    final response = await _mainApi.fetchShopDetails(salesmanId);

    var data = jsonDecode(response.body);
    return Salesman.fromJson(data["data"]["salesman"]);
  }

  fetchSearchProduct(String query, int page) async {
    final response = await _mainApi.fetchSearchProducts(query, page);
    Map<String, dynamic> result = Map<String, dynamic>.from(response.data);

    return SearchPaginationModel.fromJson(result);
  }
   void shareProduct(String shareLink) {
    Share.share(
      'Check out this product: $shareLink',
    );
  }
    launchInstagram() async {
   var url = 'https://www.instagram.com/florify.uz/';

if (await canLaunchUrl(Uri.parse(url))) {
  await launchUrl(
    Uri.parse(url),
  
  );
} else {
  throw 'There was a problem to open the url: $url';
}
  }

   launchTelegram() async {
    const url = 'https://t.me/'; // Replace with the Telegram URL or username
    if (await canLaunchUrl(Uri.parse(url))) {
      await canLaunchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
    Future<void> makePhoneCall(String phoneNumber) async {
    try {
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: phoneNumber,
      );
      await launchUrl(launchUri);
    } catch (e) {}
  }

}
