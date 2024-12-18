import 'package:dio/dio.dart';

import 'auth_interceptor.dart';
import 'token_service.dart';

class DioClient {
  static Dio? _instance;

  static Dio get instance {
    _instance ??= _createDioInstance();
    return _instance!;
  }

  static Dio _createDioInstance() {
    final dio = Dio();
    final tokenService = TokenService(dio);
    dio.interceptors.add(AuthInterceptor(tokenService));
    return dio;
  }
}
