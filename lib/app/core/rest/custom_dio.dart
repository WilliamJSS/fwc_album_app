import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:fwc_album_app/app/core/config/env/env.dart';

class CustomDio extends DioForNative {
  CustomDio() : super(_baseOptions()) {
    interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
  }

  static BaseOptions _baseOptions() {
    return BaseOptions(
      baseUrl: Env.instance['backend_base_url'] ?? '',
      connectTimeout: 5000,
      receiveTimeout: 60000,
    );
  }

  CustomDio auth() {
    return this;
  }

  CustomDio unAuth() {
    return this;
  }
}
