import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ego_supermart/shop/screens/onboarding/onboarding.dart';
import 'package:ego_supermart/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(0),
              width: 185,
              height: 130,
              child: Image.asset(MImages.logo),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green,
      nextScreen: const OnBoardingScreen(),
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.topToBottom,
    );
  }
}
