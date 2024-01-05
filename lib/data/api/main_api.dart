import 'dart:io';

import 'package:florify/data/api/dio_api.dart';
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:florify/data/api/api.dart';
import 'package:dio/dio.dart' as dio;

@Injectable()
class MainApi {
  final Api _api;
  final ServiceApiExample _api2;
  MainApi(this._api, this._api2);
  Future<Response> getCategories() async {
    var data = await _api.get(path: 'category');
    return data;
  }

  Future<Response> fetchProductComments(int productId) async {
    var data = await _api.get(path: 'comment/productId/$productId');
    return data;
  }

  Future<Response> fetchCategoryProducts(String categoryId, int page) async {
    var data = await _api.get(path: 'product/categoryId/$categoryId/$page/10');
    return data;
  }

  Future<Response> fetchUserComments(String userId) async {
    var data = await _api.get(path: 'comment/clientId/$userId');
    return data;
  }

  Future<dio.Response> deleteComment(String commentID) async {
    var data = await _api2.delete(path: 'comment/$commentID');
    return data;
  }

  Future<Response> fetchOrderHistory() async {
    var data = await _api.getWithToken(path: 'orders');
    print(data);
    return data;
  }

  Future<dio.Response> fetchSearchProducts(String query, int page) async {
    final params = {"search/": page, "query": query};
    var data = await _api2.fetch(
      path: 'product/search/$page?query=$query',
    );
    return data;
  }

  Future<Response> getCategoryProducts(String id) async {
    var data = await _api.get(path: 'category/$id');
    return data;
  }

  Future<Response> writeComment(
      int producId, int rating, String text, String clientId) async {
    final body = {
      "text": text,
      "rate": rating,
      "client_id": clientId,
      "product_id": producId
    };
    var data = await _api.post(path: 'comment', body: body);
    return data;
  }

  Future<Response> fetchShopDetails(String id) async {
    var data = await _api.get(path: 'salesman/$id');
    return data;
  }

  Future<Response> fetchProductDetails(int id) async {
    var data = await _api.get(path: 'product/details/$id');
    return data;
  }

  Future<Response> verfyPhone(String phone) async {
    final body = {
      "phone": phone,
    };
    var data = await _api.post(path: 'otp/sendOtp', body: body);

    return data;
  }

  Future<Response> verfySms(String phone, String sms) async {
    final body = {
      "phone": phone,
      "code": sms,
    };
    var data = await _api.post(path: 'client/register', body: body);

    return data;
  }

  Future<Response> dislike(int productId, String userId) async {
    final body = {
      "client_id": userId,
      "product_id": productId,
    };
    var data = await _api.delete(path: 'like', body: body);

    return data;
  }

  Future<Response> pressLike(int productId, String userId) async {
    final body = {
      "client_id": userId,
      "product_id": productId,
    };

    var data = await _api.post(path: 'like', body: body);

    return data;
  }

  Future<Response> fetchLikes(String userId) async {
    final params = {"clientId": userId};
    var data = await _api.get(
      path: 'like/clientId/$userId',
    );
    return data;
  }

  Future<Response> fetchStores() async {
    var data = await _api.get(path: 'salesman');
    return data;
  }

  Future<Response> fetchRecentlyProducts(String clientId) async {
    var data = await _api.get(path: 'watched/clientId/$clientId');
    return data;
  }

  Future<dio.Response> updateProfile(
      {File? photo, String? name, String? phone, int? gender}) async {
    var image = photo != null
        ? await dio.MultipartFile.fromFile(photo.path,
            filename: photo.path.split('/').last,
            contentType: MediaType('image', 'jpg'))
        : null;

    final dio.FormData formData = dio.FormData.fromMap({
      "photo": image,
      "name": phone,
      "phone": name,
      "gender": gender,
    });

    var data = await _api2.uploadmultipleimage(
      path: "client/profile/update",
      formData: formData,
    );
    return data;
  }
}
