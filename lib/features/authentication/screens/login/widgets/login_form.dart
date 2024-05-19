import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/password.conigerations/forgot_password.dart';
import 'package:t_store/features/authentication/screens/signUp/signUp.dart';
import 'package:t_store/navigation_maenu.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.email),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              suffixIcon: Icon(Iconsax.eye_slash),
              labelText: TTexts.password),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Text(TTexts.rememberMe)
              ],
            ),
            TextButton(
                onPressed: () => Get.to(() => ForgotPassword()),
                child: const Text(TTexts.forgetPassword))
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => NavigationMenu()),
                child: const Text(TTexts.signIn))),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {
                  Get.to(() => SignUpScreen());
                },
                child: const Text(TTexts.createAccount)))
      ],
    ));
  }
}
