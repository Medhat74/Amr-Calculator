import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    String baseUrl = 'https://mohamed-amr-calculator.herokuapp.com/api/';

    dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        responseType: ResponseType.plain,
        headers: {
          'Content-Type': 'application/json',
        }));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',


    };
    //print("urrrrrrrl : $url");

    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) {
    dio.options.headers = {
      'Authorization': 'Bearer $token',
    };
    print("urrrrrrrl : $url");
    return dio.post(url, queryParameters: query, data: data);
  }

  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'authorization': 'Bearer $token',
    };
    print("urrrrrrrl : $url");
    return dio.post(url, queryParameters: query, data: data);
  }
}