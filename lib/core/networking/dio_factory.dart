import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helper/sheard_prefrence_healper.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      addDioHeader();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  static Future<void> addDioHeader() async {
    dio?.options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer ${await SharedPrefrenceHelper.getSecureToken()}"
    };
  }

  static void setTokenToHeader(String token) {
    dio?.options.headers["Authorization"] = "Bearer $token";
  }
}
