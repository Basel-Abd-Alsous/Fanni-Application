import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterKey {
  RouterKey._();
  static const String splash = '/splash';
  static const String introduction = '/introduction';
  static const String stepper = '/stepper';
  static const String chooseFlow = '/chooseFlow';
  static const String auth = '/auth';
  static const String otp = '/otp';
  static const String forget = '/forget';
  static const String updatePassword = '/updatePassword';
  static const String vendorInfo = '/vendorInfo';
  static const String content = '/content';
  static const String verifyMobil = '/verifyMobil';
  static const String changePassoword = '/changePassoword';
  static const String notifications = '/notifications';
  static const String editMobile = '/editMobile';
  static const String subscriptions = '/subscriptions';
  // * Customer Routers
  static const String layoutCustomer = '/layoutCustomer';
  static const String providers = '/providers';
  static const String providersDetails = '/providersDetails';
  static const String images = '/images';
  // * Provider Routers
  static const String layoutProvider = '/layoutProvider';

  static RouteBase pageRouter({required String path, required Widget screen, List<RouteBase>? routes}) =>
      GoRoute(path: path, pageBuilder: (context, state) => fadeTransitionPage(screen, state), routes: routes ?? []);

  static Page fadeTransitionPage(Widget child, GoRouterState state) => CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
