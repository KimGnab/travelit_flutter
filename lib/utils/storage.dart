import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const accessTokenKey = 'access_token';
const refreshTokenKey = 'refresh_token';

class Storage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<void> write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> read(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  Future<String?> getAccessToken() async {
    return await read(accessTokenKey);
  }

  Future<void> setAccessToken(String accessToken) async {
    await write(accessTokenKey, accessToken);
  }

  Future<void> deleteAccessToken() async {
    await delete(accessTokenKey);
  }

  Future<String?> getRefreshToken() async {
    return await read(refreshTokenKey);
  }

  Future<void> setRefreshToken(String refreshToken) async {
    await write(refreshTokenKey, refreshToken);
  }

  Future<void> deleteRefreshToken() async {
    await delete(refreshTokenKey);
  }
}
