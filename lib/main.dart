import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:travelit/config/router.dart';

void main() {
  KakaoSdk.init(nativeAppKey: '7d6433c4418a9d97c9277c82bd6fbb6f');
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'Pretendard',
      ),
      routerConfig: router,
    );
  }
}
