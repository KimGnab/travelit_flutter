// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_me_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserMeResponse _$UserMeResponseFromJson(Map<String, dynamic> json) {
  return _UserMeResponse.fromJson(json);
}

/// @nodoc
mixin _$UserMeResponse {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserMeResponseCopyWith<UserMeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMeResponseCopyWith<$Res> {
  factory $UserMeResponseCopyWith(
          UserMeResponse value, $Res Function(UserMeResponse) then) =
      _$UserMeResponseCopyWithImpl<$Res, UserMeResponse>;
  @useResult
  $Res call(
      {int id,
      String email,
      String username,
      String? description,
      String? profileImageUrl,
      String? phoneNumber});
}

/// @nodoc
class _$UserMeResponseCopyWithImpl<$Res, $Val extends UserMeResponse>
    implements $UserMeResponseCopyWith<$Res> {
  _$UserMeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
    Object? description = freezed,
    Object? profileImageUrl = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserMeResponseImplCopyWith<$Res>
    implements $UserMeResponseCopyWith<$Res> {
  factory _$$UserMeResponseImplCopyWith(_$UserMeResponseImpl value,
          $Res Function(_$UserMeResponseImpl) then) =
      __$$UserMeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      String username,
      String? description,
      String? profileImageUrl,
      String? phoneNumber});
}

/// @nodoc
class __$$UserMeResponseImplCopyWithImpl<$Res>
    extends _$UserMeResponseCopyWithImpl<$Res, _$UserMeResponseImpl>
    implements _$$UserMeResponseImplCopyWith<$Res> {
  __$$UserMeResponseImplCopyWithImpl(
      _$UserMeResponseImpl _value, $Res Function(_$UserMeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
    Object? description = freezed,
    Object? profileImageUrl = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$UserMeResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserMeResponseImpl implements _UserMeResponse {
  _$UserMeResponseImpl(
      {required this.id,
      required this.email,
      required this.username,
      required this.description,
      required this.profileImageUrl,
      required this.phoneNumber});

  factory _$UserMeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserMeResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String username;
  @override
  final String? description;
  @override
  final String? profileImageUrl;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'UserMeResponse(id: $id, email: $email, username: $username, description: $description, profileImageUrl: $profileImageUrl, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMeResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, username, description,
      profileImageUrl, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMeResponseImplCopyWith<_$UserMeResponseImpl> get copyWith =>
      __$$UserMeResponseImplCopyWithImpl<_$UserMeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMeResponseImplToJson(
      this,
    );
  }
}

abstract class _UserMeResponse implements UserMeResponse {
  factory _UserMeResponse(
      {required final int id,
      required final String email,
      required final String username,
      required final String? description,
      required final String? profileImageUrl,
      required final String? phoneNumber}) = _$UserMeResponseImpl;

  factory _UserMeResponse.fromJson(Map<String, dynamic> json) =
      _$UserMeResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String get username;
  @override
  String? get description;
  @override
  String? get profileImageUrl;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$UserMeResponseImplCopyWith<_$UserMeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
