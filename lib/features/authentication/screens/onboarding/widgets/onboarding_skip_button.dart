import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/device/device_utility.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDevicesUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
