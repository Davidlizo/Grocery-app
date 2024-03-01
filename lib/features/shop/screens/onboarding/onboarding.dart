import 'package:ego_supermart/features/shop/controller/controllers.onboarding/onboarding_controller.dart';
import 'package:ego_supermart/features/shop/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ego_supermart/features/shop/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ego_supermart/utils/constants/image_strings.dart';
import 'package:ego_supermart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());


    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: MImages.onBoardingImage1,
                title: MTexts.OnBoardingTitle1,
                subTitle: MTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: MImages.onBoardingImage2,
                title: MTexts.OnBoardingTitle2,
                subTitle: MTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: MImages.onBoardingImage3,
                title: MTexts.OnBoardingTitle3,
                subTitle: MTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          // Skip Button
          const OnBoardingSkip(),
          //Dot Navigation SmoothPageIndicator
          const OnBoardingNavigation(),
          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
