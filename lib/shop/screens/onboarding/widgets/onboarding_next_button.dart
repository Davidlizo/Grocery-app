import 'package:ego_supermart/shop/controller/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 40,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.green,
        ),
        child: const Icon(Icons.arrow_forward_ios, color: Colors.white),
      ),
    );
  }
}
