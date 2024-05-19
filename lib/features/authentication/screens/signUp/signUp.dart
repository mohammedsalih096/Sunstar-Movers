import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/singnUp/sign_up_controlers.dart';
import 'package:t_store/features/authentication/screens/login/widgets/social_media_botton.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:t_store/utils/validators/validation.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpControllers());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                Text(
                  TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                Form(
                    key: controller.signUpKey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: controller.firstName,
                                validator: (value) =>
                                    TValidator.validateEmptyText(
                                        'first Name', value),
                                decoration: InputDecoration(
                                    labelText: TTexts.firstName,
                                    prefixIcon: Icon(Iconsax.user)),
                              ),
                            ),
                            const SizedBox(
                              width: TSizes.spaceBtwInputFields,
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: controller.lastName,
                                validator: (value) =>
                                    TValidator.validateEmptyText(
                                        'last Name', value),
                                decoration: InputDecoration(
                                    labelText: TTexts.lastName,
                                    prefixIcon: Icon(Iconsax.user)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        TextFormField(
                          controller: controller.userName,
                          validator: (value) =>
                              TValidator.validateEmptyText('user Name', value),
                          decoration: InputDecoration(
                              labelText: TTexts.username,
                              prefixIcon: Icon(Iconsax.user_edit)),
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        TextFormField(
                          controller: controller.email,
                          validator: (value) => TValidator.validateEmail(value),
                          decoration: InputDecoration(
                              labelText: TTexts.email,
                              prefixIcon: Icon(Iconsax.direct)),
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        TextFormField(
                          controller: controller.PhoneNo,
                          validator: (value) =>
                              TValidator.validatePhoneNumber(value),
                          decoration: InputDecoration(
                              labelText: TTexts.phoneNo,
                              prefixIcon: Icon(Iconsax.call)),
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        Obx(
                          () => TextFormField(
                            controller: controller.Password,
                            validator: (value) =>
                                TValidator.validatePassword(value),
                            obscureText: controller.hidePassword.value,
                            decoration: InputDecoration(
                                labelText: TTexts.password,
                                prefixIcon: Icon(Iconsax.password_check),
                                suffixIcon: IconButton(
                                  onPressed: () => controller.hidePassword
                                      .value = !controller.hidePassword.value,
                                  icon: Icon(controller.hidePassword.value
                                      ? Iconsax.eye_slash
                                      : Iconsax.eye),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                height: 24,
                                width: 24,
                                child: Obx(
                                  () => Checkbox(
                                      value: controller.privacyPolicy.value,
                                      onChanged: (value) =>
                                          controller.privacyPolicy.value =
                                              !controller.privacyPolicy.value),
                                )),
                            SizedBox(
                              width: TSizes.spaceBtwItems,
                            ),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: '${TTexts.iAgreeTo} ',
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                text: '${TTexts.privacyPolicy}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                        decorationColor: dark
                                            ? TColors.white
                                            : TColors.primary,
                                        color: dark
                                            ? TColors.white
                                            : TColors.primary),
                              ),
                              TextSpan(
                                  text: '  ${TTexts.and} ',
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                text: '${TTexts.termsOfUse}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                        decorationColor: dark
                                            ? TColors.white
                                            : TColors.primary,
                                        color: dark
                                            ? TColors.white
                                            : TColors.primary),
                              ),
                            ]))
                          ],
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () => controller.signUp(),
                              child: Text(TTexts.createAccount)),
                        )
                      ],
                    )),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Flexible(
                        child: Divider(
                      color: TColors.darkGrey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    )),
                    Text(
                      TTexts.orSignUpWith,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const Flexible(
                        child: Divider(
                      color: TColors.darkGrey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ))
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                SocialMediaButton()
              ],
            )),
      ),
    );
  }
}
