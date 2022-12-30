import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nba/di/service_locator.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@Singleton()
class DioProvider {
  DioProvider() {
    final options = BaseOptions(
      baseUrl: 'https://free-nba.p.rapidapi.com/',
      connectTimeout: 15000,
      receiveTimeout: 15000,
      contentType: Headers.jsonContentType,
      headers: {
        'X-RapidAPI-Key': apiToken,
        'X-RapidAPI-Host': 'free-nba.p.rapidapi.com'
      },
    );
    _dio = Dio(options);
    addInterceptor(
      PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: false),
    );
  }

  static const String apiToken =
      '4bdb42fc8bmsh0517fa4ab58fa4dp18fef3jsn22de2d4a74dd';

  Dio? _dio;

  Dio get dio => _dio!;

  void addInterceptor(Interceptor interceptor) {
    deleteInterceptor(interceptor.runtimeType);
    dio.interceptors.add(interceptor);
  }

  void deleteInterceptor(Type interceptorType) {
    dio.interceptors
        .removeWhere((element) => element.runtimeType == interceptorType);
  }
}

mixin DioProviderMixin {
  Dio get dio => getIt<DioProvider>().dio;
}
