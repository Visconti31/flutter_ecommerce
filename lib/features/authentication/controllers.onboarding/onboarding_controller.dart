import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Variables

  // Update current index when page is scrolled
  void updatePageIndicator(index) {}

  // Jump to specific dot selected page
  void dotNavigationClick(index) {}

  // Update current index and jump to the next page
  void nextPage() {}

  // Update current index and jump to the last page
  void skipPage() {}
}
