import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/login_screen.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update current index when page is scrolled
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update current index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update current index and jump to the last page
  void skipPage() {
    // currentPageIndex.value = 2;
    // pageController.jumpToPage(2);
    Get.to(() => const LoginScreen());
  }
}
