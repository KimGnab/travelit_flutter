// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_me_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserMeResponseImpl _$$UserMeResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserMeResponseImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      username: json['username'] as String,
      description: json['description'] as String?,
      profileImageUrl: json['profileImageUrl'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$UserMeResponseImplToJson(
        _$UserMeResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'description': instance.description,
      'profileImageUrl': instance.profileImageUrl,
      'phoneNumber': instance.phoneNumber,
    };
