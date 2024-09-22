import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/bloc/register_device_bloc/bloc/register_device_bloc.dart';
import 'package:flutter_application_1/src/screen/screen_forgot_password_onboard.dart';
import 'package:flutter_application_1/src/screen/screen_login.dart';
import 'package:flutter_application_1/src/screen/screen_rd_cid.dart';
import 'package:flutter_application_1/src/screen/screen_rd_pin.dart';
import 'package:flutter_application_1/src/screen/screen_c.dart';
import 'package:flutter_application_1/src/screen/screen_home.dart';
import 'package:flutter_application_1/src/screen/screen_rd_onboard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static const registerDeviceScreenKey = ValueKey('register-device');
  static const forgotPasswordScreenKey = ValueKey('forgot-password');

// GoRouter configuration
  final router = GoRouter(
    initialLocation: '/register-device',
    navigatorKey: navigatorKey,
    routes: [
      StatefulShellRoute(
        builder: (context, state, navigationShell) => navigationShell,
        navigatorContainerBuilder: (context, navigationShell, children) {
          return HomeScreen(
            navigationShell: navigationShell,
            children: children,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/register-device',
                builder: (context, state) => RegisterDeviceOnboardScreen(),
                routes: [
                  GoRoute(
                    path: 'cid',
                    builder: (context, state) => CIDScreen(),
                  ),
                  GoRoute(
                    path: 'pin',
                    builder: (context, state) => PINScreen(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/forgot-password',
                builder: (context, state) => ForgotPasswordOnboardScreen(
                  key: forgotPasswordScreenKey,
                ),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/setting',
        builder: (context, state) {
          return ScreenC();
        },
      )
    ],
  );
}
