import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomPageTransitionsBuilder extends PageTransitionsBuilder {
  final Widget Function(
          BuildContext, Animation<double>, Animation<double>, Widget)
      transitionsBuilder;

  const CustomPageTransitionsBuilder({required this.transitionsBuilder});

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return transitionsBuilder(context, animation, secondaryAnimation, child);
  }
}

class CustomTransitions {
  static Widget fadeTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child, {
    Color? backgroundColor,
  }) {
    return Container(
      color: backgroundColor,
      child: Animate(
        effects: [FadeEffect(duration: 300.ms)],
        child: child,
      ),
    );
  }

  static Widget slideTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [
        SlideEffect(
            begin: const Offset(1, 0), end: Offset.zero, duration: 300.ms)
      ],
    );
  }

  static Widget scaleTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [
        ScaleEffect(
            begin: const Offset(0.8, 0.8),
            end: const Offset(1.0, 1.0),
            duration: 300.ms)
      ],
    );
  }

  static Widget flipTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [FlipEffect(duration: 300.ms)],
    );
  }

  static Widget blurTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [
        BlurEffect(
            duration: 300.ms, begin: const Offset(10, 10), end: Offset.zero)
      ],
    );
  }

  static Widget shakeTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      effects: [ShakeEffect(duration: 300.ms)],
      child: child,
    );
  }

  static Widget rotateTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [RotateEffect(duration: 300.ms, begin: 0, end: 0.5)],
    );
  }

  static Widget bounceTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [
        ScaleEffect(
          duration: 300.ms,
          curve: Curves.bounceOut,
          begin: const Offset(0.5, 0.5),
          end: const Offset(1, 1),
        )
      ],
    );
  }

  static Widget fadeSlideTransition(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      {Color backgroundColor = Colors.white}) {
    return Container(
      color: backgroundColor, // Set background color
      child: Animate(
        effects: [
          FadeEffect(
            duration: 300.ms,
            begin: 0.3, // Start with 30% opacity instead of 0
            end: 1.0,
          ),
          SlideEffect(
            duration: 300.ms,
            begin: const Offset(0, 0.1),
            end: Offset.zero,
          ),
        ],
        child: child,
      ),
    );
  }

  static Widget zoomTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [
        ScaleEffect(
          duration: 300.ms,
          curve: Curves.easeInOut,
          begin: const Offset(0, 0),
          end: const Offset(1, 1),
        ),
        FadeEffect(duration: 300.ms),
      ],
    );
  }

  static Widget slideFromBottomTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [
        SlideEffect(
          duration: 300.ms,
          begin: const Offset(0, 1),
          end: Offset.zero,
          curve: Curves.easeOut,
        ),
      ],
    );
  }

  static Widget elasticScaleTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [
        ScaleEffect(
          duration: 600.ms,
          curve: Curves.elasticOut,
          begin: const Offset(0.5, 0.5),
          end: const Offset(1, 1),
        ),
      ],
    );
  }

  static Widget flipAndFadeTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [
        FlipEffect(duration: 400.ms, direction: Axis.horizontal),
        FadeEffect(duration: 400.ms, delay: 200.ms),
      ],
    );
  }

  static Widget slideAndRotateTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [
        SlideEffect(
          duration: 400.ms,
          begin: const Offset(-1, 0),
          end: Offset.zero,
          curve: Curves.easeOutCubic,
        ),
        RotateEffect(
          duration: 400.ms,
          begin: -0.5,
          end: 0,
          alignment: Alignment.center,
        ),
      ],
    );
  }

  static Widget pulseTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [
        FadeEffect(duration: 600.ms),
      ],
      onPlay: (controller) => controller.repeat(reverse: true),
    ).custom(
      duration: 1800.ms, // Total duration for 3 pulses (600ms * 3)
      builder: (context, value, child) {
        return Transform.scale(
          scale: 0.9 + (0.1 * value),
          child: child,
        );
      },
    );
  }

  static Widget swingTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Animate(
      child: child,
      effects: [
        RotateEffect(
          duration: 600.ms,
          curve: Curves.easeInOut,
          begin: -0.2,
          end: 0,
          alignment: Alignment.topCenter,
        ),
        FadeEffect(duration: 300.ms),
      ],
    );
  }

  static Widget slideRightToLeft(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return Animate(
      effects: [
        SlideEffect(
          duration: 300.ms,
          begin: const Offset(1, 0),
          end: Offset.zero,
          curve: Curves.easeInOut,
        ),
      ],
      child: child,
    );
  }
}
