import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:travelit/apis/auth_api.dart';
import 'package:travelit/main.dart';
import 'package:travelit/utils/storage.dart';

class KakaoButton extends StatefulWidget {
  const KakaoButton({super.key});

  @override
  State<KakaoButton> createState() => _KakaoButtonState();
}

class _KakaoButtonState extends State<KakaoButton> {
  final AuthAPI _authAPI = AuthAPI();
  final Object? user = null;
  final Storage _storage = Storage();

  Future<OAuthToken?> _getKakaoToken() async {
    try {
      if (await isKakaoTalkInstalled()) {
        log('카카오톡 설치됨');
        try {
          log('카카오톡으로 로그인 시도');
          return await UserApi.instance.loginWithKakaoTalk();
        } catch (error) {
          log('카카오톡으로 로그인 실패 $error');

          // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
          try {
            log('카카오계정으로 로그인 시도');
            return await UserApi.instance.loginWithKakaoAccount();
          } catch (error) {
            log('카카오계정으로 로그인 실패 $error');
            rethrow;
          }
        }
      } else {
        log('카카오톡 미설치');
        try {
          return await UserApi.instance.loginWithKakaoAccount();
        } catch (error) {
          log('카카오계정으로 로그인 실패 $error');
          rethrow;
        }
      }
    } on PlatformException catch (error) {
      if (error.code == "CANCELED") {
        log('로그인 취소 $error');
        if (mounted) context.showSnackBar('로그인을 취소했습니다.', isError: true);
      }
    } catch (error) {
      log('로그인 실패 $error');
      if (mounted) context.showSnackBar('로그인에 실패했습니다. $error', isError: true);
    }
    return null;
  }

  Future<void> _loginWithKakao() async {
    OAuthToken? tokenInfo = await _getKakaoToken();

    if (tokenInfo != null) {
      try {
        final response = await _authAPI.postOauthKakao(tokenInfo.accessToken);
        await _storage.setAccessToken(response.accessToken);
        await _storage.setRefreshToken(response.refreshToken);
      } catch (error) {
        log('로그인 실패 $error');
        if (mounted) context.showSnackBar('로그인에 실패했습니다. $error', isError: true);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: _loginWithKakao,
      child: SvgPicture.asset(
        'assets/icons/login_kakao.svg',
        width: 68,
        height: 68,
      ),
    );
  }
}
