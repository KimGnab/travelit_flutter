import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:travelit/apis/auth_api.dart';
import 'package:travelit/utils/storage.dart';

const serverUrl = 'https://server.travelit.kr';
const version = 'v1';

class ApiService {
  final Dio dio;
  final Storage _storage = Storage();

  ApiService({String baseUrl = '$serverUrl/$version'})
      : dio = Dio(BaseOptions(baseUrl: baseUrl, contentType: 'application/json')) {
    _setupInterceptors();
  }

  void _setupInterceptors() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          try {
            final token = await _storage.getAccessToken();
            if (token != null) {
              options.headers['Authorization'] = 'Bearer $token';
            }
          } catch (e) {
            log('Failed to get access token: $e');
          }
          return handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            String? refreshToken = await _storage.getRefreshToken();
            if (refreshToken != null) {
              final response = await AuthAPI().postRefresh(refreshToken);
              await _storage.setAccessToken(response.accessToken);
              await _storage.setRefreshToken(response.refreshToken);
              error.requestOptions.headers['Authorization'] = 'Bearer ${response.accessToken}';
              return handler.resolve(await dio.fetch(error.requestOptions));
            }

            await _storage.deleteAccessToken();
            await _storage.deleteRefreshToken();
          }

          log('Request error: ${error.message}');
          return handler.next(error);
        },
      ),
    );
  }
}
