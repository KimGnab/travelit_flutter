import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelit/screens/login_screen/widgets/kakao_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 213),
                      SvgPicture.asset(
                        'assets/logo.svg',
                        width: 140,
                        height: 140,
                      ),
                      const Text(
                        "여행의 모든 순간을 잇다",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 86, 26, 26),
                          fontSize: 17,
                          fontFamily: 'Pretendard',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Expanded(
                              child: Divider(
                            height: 11,
                            thickness: 0.40,
                            color: Color(0xFF181818),
                          )),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 13),
                            child: const Text(
                              '간편 로그인',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF181818),
                                fontSize: 13,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const Expanded(
                              child: Divider(
                            height: 11,
                            thickness: 0.40,
                            color: Color(0xFF181818),
                          )),
                        ],
                      ),
                      const SizedBox(height: 24),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KakaoButton(),
                          // NaverButton(),
                          // GoogleButton(),
                          // AppleButton(),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     Expanded(
                      //       child: ElevatedButton(
                      //         onPressed: () {
                      //           context.go('/login');
                      //         },
                      //         child: const Text('로그인'),
                      //       ),
                      //     ),
                      //   ],
                      // )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
