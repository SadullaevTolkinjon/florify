import 'dart:convert';

import 'package:florify/data/preferences/token_preferences.dart';
import 'package:florify/domain/model/user/user_model.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:florify/domain/model/expections/invalid_credentials_exceptions.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

@Injectable()
class Api {
  final TokenPreference _token;

  Api(this._token);

  final _host = "api.florify.uz";
  final _root = "/api";

  final _timeout = const Duration(seconds: 15);

  static final HttpWithMiddleware _httpClient = HttpWithMiddleware.build(
    middlewares: [HttpLogger(logLevel: LogLevel.BODY)],
  );

  Future<Response> get({
    required String path,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root/$path",
        params?.map((key, value) => MapEntry(key, value.toString())));
    final headers = await _headers;
    final result =
        await _httpClient.get(uri, headers: headers).timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> getWithToken({
    required String path,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root/$path",
        params?.map((key, value) => MapEntry(key, value.toString())));
    final headers = await _headersWithToken;
    final result =
        await _httpClient.get(uri, headers: headers).timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> post({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root/$path", params);
    final headers = await _headers;
    final result = await _httpClient
        .post(uri, headers: headers, body: jsonEncode(body))
        .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> put({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.http(_host, "$_root/$path", params);
    final headers = await _headers;
    final result = await _httpClient
        .put(uri,
            headers: headers, body: body != null ? jsonEncode(body) : null)
        .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Response> delete({
    required String path,
    Map<String, dynamic>? body,
    Map<String, Object>? params,
  }) async {
    final uri = Uri.https(_host, "$_root/$path", params);
    final headers = await _headers;
    final result = await _httpClient
        .delete(uri, headers: headers, body: jsonEncode(body))
        .timeout(_timeout);
    return propagateErrors(result);
  }

  Future<Map<String, String>> get _headers async {
    final headers = <String, String>{
      "Content-Type": "application/json",
      "accept": "/"
    };

    // final token = await _token.get();
    // if (token != null) {
    //   headers["token"] = token;
    // }

    return headers;
  }

  Future<Map<String, String>> get _headersWithToken async {
    final headers = <String, String>{
      "Content-Type": "application/json",
      "accept": "/"
    };

    final token = await clientId();
    headers["Authorization"] = "Bearer $token";
    print(headers);
    return headers;
  }

  Future<String> clientId() async {
    String? data;
    var user = await _token.getUser();
    if (user != null) {
      final usermodel = UserModel.fromJson(jsonDecode(user));
      data = usermodel.data!.client!.id!.toString();
    } else {
      data = null;
    }
    return data!;
  }

  Future<Response> propagateErrors(Response response) async {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response;
    }

    switch (response.statusCode) {
      // case 404:
      //   throw UserNotFoundException();
      case 403:
        //await _token.clear();
        throw InvalidCredentialsExceptions();
      // case 402:
      //   throw NameUnavailableException();
      default:
        throw Exception(
          [
            "Error",
            response.statusCode,
            response.body,
          ],
        );
    }
  }
}
