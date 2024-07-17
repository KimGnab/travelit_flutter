import 'package:dio/dio.dart';
import 'package:travelit/apis/api_service.dart';
import 'package:travelit/models/response/login_response.dart';

class AuthAPI extends ApiService {
  AuthAPI();

  Future<Response> postLogin(String email, String password) async {
    return dio.post('/auth/login', data: {
      'email': email,
      'password': password,
    });
  }

  Future<LoginResponse> postOauthKakao(String kakaoAccessToken) async {
    final response = await dio.post('/auth/oauth/kakao', data: {
      'accessToken': kakaoAccessToken,
    });

    return LoginResponse.fromJson(response.data);
  }

  Future<LoginResponse> postRefresh(String refreshToken) async {
    final response = await dio.post('/auth/refresh', data: {
      'refreshToken': refreshToken,
    });

    return LoginResponse.fromJson(response.data);
  }
}
