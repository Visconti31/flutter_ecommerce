import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/device/device_utility.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDevicesUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.light : TColors.black,
            iconColor: dark ? TColors.black : TColors.light),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
