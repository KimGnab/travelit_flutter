import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travelit/layout/tabs_layout.dart';
import 'package:travelit/screens/home_screen/index.dart';
import 'package:travelit/screens/splash_screen/index.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    StatefulShellRoute.indexedStack(
      // parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state, navigationShell) => TabsLayout(
        navigationShell: navigationShell,
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/feed',
              builder: (context, state) => const Scaffold(
                body: Center(
                  child: Text('feed'),
                ),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/photo-zone',
              builder: (context, state) => const Scaffold(
                body: Center(
                  child: Text('photo-zone'),
                ),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/my',
              builder: (context, state) => const Scaffold(
                body: Center(
                  child: Text('my'),
                ),
              ),
            ),
          ],
        ),
      ],
    )
  ],
);
