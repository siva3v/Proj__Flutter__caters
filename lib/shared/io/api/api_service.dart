
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../../blocks/app_base/app_base.dart';

class ApiService {
  final Dio dio = Dio();
  late AppBase appBase;

  init(AppBase appBase){
    this.appBase = appBase;
    if (kDebugMode) dio.interceptors.add(Logging());
  }

  Future authorizedGet(String url) async {
    try {
      final accessToken = appBase.authModel.accessToken;
      final options = Options();
      options.headers = {"Authorization": "Bearer $accessToken", "accept-language": Platform.localeName};
      var response = await dio.get(url, options: options);
      return response;
    } on DioError catch (e) {
      if (e.response?.statusCode==401 || e.response?.statusCode==403) {
        refreshAccessToken().then((value) {
          authorizedGet(url);
        }).onError((error, stackTrace) {
          print("Error:: Failed to Refresh Access token");
        });
      } else {
        return onError(e);
      }
    }
  }

  Future post(String url, Map<String, String>? headers, Map<String, dynamic> bodyMap) async {
    try {
      var body = FormData.fromMap(bodyMap);
      final options = Options(contentType: "multipart/form-data");
      var response = await dio.post(url, data: body, options: options);
      return response;
    } on DioError catch (e) {
      if (e.response?.statusCode==401 || e.response?.statusCode==403) {
        refreshAccessToken().then((value) {
          post(url, headers, bodyMap);
        }).onError((error, stackTrace) {
          print("Error:: Failed to Refresh Access token");
        });
      }
      else {
        return onError(e);
      }
    }
  }

  onError(e){
    return Future.error(e, StackTrace.fromString((e.response != null) ?
    "Server returned error" : "Error sending request"));
  }

  Future refreshAccessToken() {
    return appBase.repo.verifyCredentials(null, appBase.authModel.username, appBase.authModel.password);
  }

}


class Logging extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      print('REQUEST[${options.method}] => PATH: ${options.path}');
    }
    return super.onRequest(options, handler);
  }
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    }
    return super.onResponse(response, handler);
  }
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      print('ERROR : ${err.message}');
    }
    return super.onError(err, handler);
  }
}