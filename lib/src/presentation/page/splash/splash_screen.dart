import 'package:bloc_clean_architecture/src/common/routes.dart';
import 'package:bloc_clean_architecture/src/presentation/bloc/authenticator_watcher/authenticator_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Future.microtask(
        () => context.read<AuthenticatorWatcherBloc>().add(
              const AuthenticatorWatcherEvent.authCheckRequest(),
            ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            authenticating: (_) {},
            authenticated: (_) {
              context.replaceNamed(AppRoutes.DASHBOARD_ROUTE_NAME);
            },
            isFirstTime: (_) {
              context.replaceNamed(AppRoutes.ONBOARDING_ROUTE_NAME);
            },
            unauthenticated: (_) {
              context.replaceNamed(AppRoutes.ONBOARDING_ROUTE_NAME);
            });
      },
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.purple.shade100, Colors.white],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.contain,
              )
                  .animate()
                  .fade(duration: 500.ms)
                  .scale(delay: 500.ms, duration: 700.ms)
                  .then(delay: 300.ms)
                  .shimmer(duration: 1000.ms, color: Colors.white),
              // const SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit ame',
                style: Theme.of(context).textTheme.headlineMedium,
              )
                  .animate()
                  .fadeIn(delay: 1200.ms, duration: 500.ms)
                  .then(delay: 200.ms)
                  .slideY(begin: 0.2, end: 0),
              const SizedBox(height: 12),
              const CircularProgressIndicator()
                  .animate()
                  .fadeIn(delay: 1700.ms, duration: 500.ms),
            ],
          ),
        ),
      ),
    );
  }
}
