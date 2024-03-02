import 'package:ego_supermart/shop/screens/onboarding/widgets/onboarding_getstarted.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(const GetStarted());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current Index & jump to the last Page
  void skipPage() {
    if (currentPageIndex.value == 0 || currentPageIndex.value == 1 || currentPageIndex.value ==2) {
      Get.offAll(const GetStarted());
    } else {
      return;
    }

    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
