import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup/widget/terms_and_conditions_checkbox.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              //* User First Name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.firstName,
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              //* User Last Name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.lastName,
                  ),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          //* Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: TTexts.username,
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields),

          //* Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: TTexts.email,
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields),

          //* Phone Number
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TTexts.phoneNo,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          //* Password
          TextFormField(
            obscureText: true,
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
              labelText: TTexts.password,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          //* Terms and Conditions
          const TTermsAndConditionsCheckBox(),
          const SizedBox(height: TSizes.spaceBtwSections),

          //* SignUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(TTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}
