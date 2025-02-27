import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:get/utils.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //* Form
              const TSignupForm(),

              //* Divider
              const SizedBox(height: TSizes.spaceBtwSections),
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

              //* Social Buttons
              const SizedBox(height: TSizes.spaceBtwSections),
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
