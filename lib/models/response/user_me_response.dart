import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_me_response.freezed.dart';
part 'user_me_response.g.dart';

@freezed
class UserMeResponse with _$UserMeResponse {
  factory UserMeResponse({
    required int id,
    required String email,
    required String username,
    required String? description,
    required String? profileImageUrl,
    required String? phoneNumber,
  }) = _UserMeResponse;

  factory UserMeResponse.fromJson(Map<String, dynamic> json) => _$UserMeResponseFromJson(json);
}
