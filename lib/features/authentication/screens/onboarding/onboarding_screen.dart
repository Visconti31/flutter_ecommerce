import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce/utils/device/device_utility.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Horizontal scrollable pages
        PageView(
          children: const [
            OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle1,
              subtitle: TTexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage2,
              title: TTexts.onBoardingTitle2,
              subtitle: TTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage3,
              title: TTexts.onBoardingTitle3,
              subtitle: TTexts.onBoardingSubTitle3,
            ),
          ],
        ),

        // Skip button
        const OnBoardingSkipButton(),

        // Dot navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),

        // Circular Button
      ],
    ));
  }
}
