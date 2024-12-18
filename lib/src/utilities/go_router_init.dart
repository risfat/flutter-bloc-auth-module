import 'package:bloc_clean_architecture/src/common/routes.dart';
import 'package:bloc_clean_architecture/src/presentation/page/auth/login_screen.dart';
import 'package:bloc_clean_architecture/src/presentation/page/auth/personal_info_screen.dart';
import 'package:bloc_clean_architecture/src/presentation/page/dashboard/dashboard_screen.dart';
import 'package:bloc_clean_architecture/src/presentation/page/error/error_screen.dart';
import 'package:bloc_clean_architecture/src/presentation/page/splash/splash_screen.dart';
import 'package:bloc_clean_architecture/src/utilities/logger.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/page/boarding/boarding_screen.dart';
import 'custom_transitions.dart';

GoRouter routerinit = GoRouter(
  routes: <RouteBase>[
    ///  =================================================================
    ///  ********************** Splash Route *****************************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.SPLASH_ROUTE_NAME,
      path: AppRoutes.SPLASH_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),

    ///  =================================================================
    ///  ******************** Onboarding Route **************************
    /// ==================================================================

    GoRoute(
        name: AppRoutes.ONBOARDING_ROUTE_NAME,
        path: AppRoutes.ONBOARDING_ROUTE_PATH,
        builder: (BuildContext context, GoRouterState state) {
          return const BoardingScreen();
        }),

    ///  =================================================================
    /// ********************** Authentication Routes ********************
    /// ==================================================================
    GoRoute(
      name: AppRoutes.LOGIN_ROUTE_NAME,
      path: AppRoutes.LOGIN_ROUTE_PATH,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return CustomTransitionPage<void>(
          key: state.pageKey,
          child: const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return CustomTransitions.fadeTransition(
              context,
              animation,
              secondaryAnimation,
              child,
              backgroundColor: Colors.white.withOpacity(0.5),
            );
          },
        );
      },
    ),
    GoRoute(
      name: AppRoutes.PERSONAL_INFO_ROUTE_NAME,
      path: AppRoutes.PERSONAL_INFO_ROUTE_PATH,
      builder: (BuildContext context, GoRouterState state) {
        return const PersonalInfoScreen();
      },
    ),

    ///  =================================================================
    /// ********************** DashBoard Route ******************************
    /// ==================================================================
    GoRoute(
        name: AppRoutes.DASHBOARD_ROUTE_NAME,
        path: AppRoutes.DASHBOARD_ROUTE_PATH,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
              key: state.pageKey,
              child: const DashboardScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return CustomTransitions.fadeSlideTransition(
                  context,
                  animation,
                  secondaryAnimation,
                  child,
                  backgroundColor: Colors.white, // Example color
                );
              },
            )),
  ],
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: ErrorScreen());
  },
  redirect: (context, state) {
    logger.info('redirect: ${state.uri}');
    return null;
  },
);
