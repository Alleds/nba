import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  static const flag = 'authToken';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.extra.containsKey(flag) == true) {
      final headers = options.headers;
      headers['X-RapidAPI-Key'] =
          '4bdb42fc8bmsh0517fa4ab58fa4dp18fef3jsn22de2d4a74dd';
      return super.onRequest(options.copyWith(headers: headers), handler);
    }
  }
}
