import 'package:florify/data/api/dio_api.dart';
import 'package:http/http.dart';
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

  Future<Response> deleteComment(String commentID) async {
    var data = await _api.delete(path: 'comment/$commentID');
    return data;
  }

  Future<dio.Response> fetchOrderHistory() async {
    var data = await _api2.get(path: 'orders');
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

  Future<Response> fetchProductDetails(int id) async {
    var data = await _api.get(path: 'product/${id.toString()}');
    return data;
  }

  Future<Response> verfyPhone(String phone) async {
    final body = {
      "phone": phone,
    };
    var data = await _api.post(
      path: 'otp/sendOtp',
      body: body,
    );

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

  Future<Response> fetchRecentlyProducts() async {
    var data = await _api.get(path: 'watched');
    return data;
  }
  // Future<Response> getProducts() async {
  //   print("------here is working broooooooo------");
  //   var data = await _api.getWithToken(path: 'book-group/public-list');
  //   return data;
  // }

  // Future<Response> getSearchCategories() async {
  //   var data = await _api.getWithToken(path: 'category/public-list');
  //   return data;
  // }

  // Future<Response> getBookCategoryProducts(int id) async {
  //   var data = await _api.getWithToken(path: 'book-group/public-list/$id');
  //   return data;
  // }

  // Future<Response> fetchBookInfo(int id) async {
  //   var data = await _api.getWithToken(path: 'book/public-list/$id');
  //   return data;
  // }

  // Future<Response> createCheckout(var books) async {
  //   final Map<String, Object?> request = {
  //     'books': books,
  //   };

  //   var data = await _api.postWithToken(path: 'checkout', body: request);
  //   return data;
  // }

  // Future<Response> fetchCategories(int id) async {
  //   var data = await _api.getWithToken(path: 'book/public-list/$id');
  //   return data;
  // }

  // Future<Response> fetchSavedBooks() async {
  //   var data = await _api.getWithToken(path: 'bookmark');
  //   return data;
  // }

  // Future<Response> getBooks(int page, int id) {
  //   final Map<String, Object> params = {
  //     "category_id": id,
  //     'page': page,
  //   };

  //   return _api.getWithToken(path: 'book/public-list', params: params);
  // }

  // Future<Response> fetchSearch(String query) async {
  //   final Map<String, Object> params = {'name': query};
  //   var data =
  //       await _api.getWithToken(path: 'book/public-search', params: params);
  //   return data;
  // }

  // Future<Response> saveBookmark(int id) async {
  //   final Map<String, Object> params = {'book_id': id.toString()};

  //   var data = await _api.postWithToken(path: 'bookmark/store', body: params);
  //   return data;
  // }

  // Future<Response> deleteBookmark(int id) async {
  //   final Map<String, Object> params = {"/": id.toString()};
  //   var data =
  //       await _api.deleteLikes(path: 'bookmark/destroy',id: id.toString());
  //   return data;
  // }

  // Future<Response> postComments(String comments, int bookId, int rating) async {
  //   final Map<String, Object> params = {
  //     "comment": comments,
  //     "rating": rating.toString(),
  //     'book_id': bookId.toString()
  //   };
  //   var data = await _api.postWithToken(path: 'review/store', body: params);
  //   return data;
  // }

  // Future<Response> fetchPayemntCards() async {
  //   var data = await _api.getWithToken(path: 'payment/uzcard-list');
  //   return data;
  // }

  // Future<Response> createPaymentCard(
  //     String cardNumber, String expryDate, String name) async {
  //   final Map<String, Object> params = {
  //     "pan": cardNumber,
  //     "expiry": expryDate,
  //     'name': name
  //   };
  //   var data = await _api.postWithToken(path: 'payment/token', body: params);
  //   return data;
  // }

  // Future<Response> createPayment(
  //     int amount, String token, int invoiceId) async {
  //   final Map<String, Object> params = {
  //     "amount": amount.toString(),
  //     "token": token,
  //     'invoice_id': invoiceId.toString()
  //   };
  //   var data = await _api.postWithToken(path: 'payment/create', body: params);
  //   return data;
  // }

  // Future<Response> createGuestLogin() async {
  //   final Map<String, Object> params = {
  //     "uuid": [1],
  //     "model": [1],
  //   };
  //   var data = await _api.postWithToken(path: 'guest/login', body: params);
  //   return data;
  // }
  // Future<Response> getStats(int page, int size) async {
  //   final params = {'page': page, 'size': size};
  //   return _api.get(path: 'stats', params: params);
  // }

  // Future<Response> getCustomers(String? search, int page, int size) {
  //   final Map<String, Object> params = {'page': page, 'size': size};
  //   if (search != null) params['search'] = search;
  //   return _api.get(path: 'customers', params: params);
  // }

  // Future<Response> getPurchases(String customerId, int page, int size) {
  //   final Map<String, Object> params = {
  //     'id': customerId,
  //     'page': page,
  //     'limit': size,
  //   };
  //   return _api.get(path: 'purchases', params: params);
  // }

  // Future<Response> createPurchase(
  //   String customerId,
  //   num amount,
  //   num rate,
  //   num? withdrawn,
  //   String? code,
  // ) {
  //   final Map<String, Object?> request = {
  //     'costumer_id': customerId,
  //     'amount': amount,
  //     'rate': rate,
  //     'withdrawn': withdrawn ?? 0.0,
  //     'code': code
  //   };
  //   return _api.post(path: 'purchases', body: request);
  // }

  // Future<Response> createCustomer(String phone, String name, String surname) {
  //   final Map<String, Object> request = {
  //     'phone': phone,
  //     'name': name,
  //     'surname': surname
  //   };
  //   return _api.post(path: 'customers', body: request);
  // }

  // Future<Response> addCustomer(String id) {
  //   return _api.put(path: 'customers/$id');
  // }

  // Future<Response> confirmPurchase(
  //   String customerId,
  //   num withdrawn,
  //   num amount,
  // ) async {
  //   final Map<String, Object?> request = {
  //     'customer_id': customerId,
  //     'amount': amount,
  //     'withdrawal': withdrawn,
  //   };
  //   return _api.post(path: 'purchases/confirm', body: request);
  // }
}
