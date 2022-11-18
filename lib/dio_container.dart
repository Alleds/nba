import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:release_updater/release_updater.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';

@module
abstract class DioProviderModule {
  @preResolve
  Future<DioProvider> dioProvider(serverConfigProvider) {
    return Future.microtask(() async {
      final provider = DioProvider(serverConfigProvider.config);
      //await provider.initCacheInterceptor();
      return provider;
    });
  }
}

//@Injectable()
class DioProvider {
  DioProvider(url) {
    final options = BaseOptions(
      baseUrl: 'https://free-nba.p.rapidapi.com/',
      connectTimeout: 15000,
      receiveTimeout: 15000,
      contentType: Headers.jsonContentType,
      headers: {
        'X-RapidAPI-Key': '4bdb42fc8bmsh0517fa4ab58fa4dp18fef3jsn22de2d4a74dd',
        'X-RapidAPI-Host': 'free-nba.p.rapidapi.com'
      },
    );
    _dio = Dio(options);
  }

  Dio? _dio;

  Dio get dio => _dio!;

  void updateBaseUrl(String baseUrl) {
    final newDioOptions = _dio!.options.copyWith(baseUrl: baseUrl);
    final interceptors = _dio!.interceptors;
    _dio = Dio(newDioOptions);
    _dio?.interceptors.addAll(interceptors);
  }

  void addInterceptor(Interceptor interceptor) {
    deleteInterceptor(interceptor.runtimeType);
    dio.interceptors.add(interceptor);
  }

  void deleteInterceptor(Type interceptorType) {
    dio.interceptors
        .removeWhere((element) => element.runtimeType == interceptorType);
  }
}
