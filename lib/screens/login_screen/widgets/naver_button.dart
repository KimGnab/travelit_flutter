import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:travelit/apis/auth_api.dart';
import 'package:travelit/main.dart';
import 'package:travelit/utils/storage.dart';

class NaverButton extends StatefulWidget {
  const NaverButton({super.key});

  @override
  State<NaverButton> createState() => _NaverButtonState();
}

class _NaverButtonState extends State<NaverButton> {
  final AuthAPI _authAPI = AuthAPI();
  final Object? user = null;
  final Storage _storage = Storage();

  Future<void> _loginWithNaver() async {
    final NaverLoginResult result = await FlutterNaverLogin.logIn();

    if (result.status == NaverLoginStatus.loggedIn) {
      NaverAccessToken res = await FlutterNaverLogin.currentAccessToken;
      print(res);
    } else {
      print('Naver login failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _loginWithNaver,
      icon: SvgPicture.asset(
        'assets/icons/login_naver.svg',
        width: 68,
        height: 68,
      ),
    );
  }
}
