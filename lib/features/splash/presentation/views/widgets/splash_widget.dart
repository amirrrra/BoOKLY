import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/routes.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget>
    with TickerProviderStateMixin {
  late Animation<Offset> animation;
  late AnimationController animationController;

  @override
  void initState() {
    slideAnimation();
    toHome();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      // child will be rebuilt once during the animation
      child: const Text(
        'Enjoy Books!',
        textAlign: TextAlign.center,
        style: Styles.style20,
      ),
      builder: (context, child) {
        return SlideTransition(
          position: animation,
          child:child,
        );
      },
    );
  }

  void slideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Constants.durationAnimation,
    );

    animation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }

  void toHome() {
    Future.delayed(
      Constants.durationTransition,
      () => GoRouter.of(context).pushReplacement(Routes.kHome),
    );
  }
}
