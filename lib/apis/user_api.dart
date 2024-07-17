import 'package:travelit/apis/api_service.dart';
import 'package:travelit/models/response/user_me_response.dart';

class UserAPI extends ApiService {
  UserAPI();

  Future<UserMeResponse> getUserMe(String refreshToken) async {
    final response = await dio.get('/users/me');

    return UserMeResponse.fromJson(response.data);
  }
}
