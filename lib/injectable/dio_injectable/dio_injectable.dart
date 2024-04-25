import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_test/domain/env/get_api_url_use_case.dart';
import 'package:graphql_test/injectable/dio_injectable/dio_injectable.mocks.dart';
import 'package:graphql_test/injectable/staging_environment.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/annotations.dart';

const timeout = Duration(seconds: 20);

@GenerateMocks([Dio])
@module
abstract class DioModule {
  @lazySingleton
  @dev
  @prod
  @staging
  Dio dio(GetApiUrlUseCase getApiUrlUseCase) {
    final dio = Dio(
      BaseOptions(
        connectTimeout: timeout,
        receiveTimeout: timeout,
        sendTimeout: timeout,
        baseUrl: getApiUrlUseCase.getApiUrl(),
      ),
    );

    const proxy = bool.hasEnvironment('DEBUG_PROXY_IP') ? String.fromEnvironment('DEBUG_PROXY_IP') : null;

    if (proxy != null) {
      dio.httpClientAdapter = IOHttpClientAdapter(createHttpClient: () {
        return HttpClient()
          ..findProxy = (uri) {
            return 'PROXY $proxy';
          }
          ..badCertificateCallback = (X509Certificate cert, String host, int port) => Platform.isAndroid;
      });
    }

    return dio;
  }

  @singleton
  @test
  Dio testDio() => MockDio();
}

void registerInterceptors({
  required GetIt getIt,
  required String environment,
}) {
  final dio = getIt<Dio>();
  dio.interceptors.addAll([
    if (environment == Environment.dev || environment == Environment.test)
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        error: true,
        logPrint: (o) => debugPrint(o.toString()),
      ),
  ]);
}
