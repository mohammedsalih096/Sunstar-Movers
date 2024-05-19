import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/features/authentication/screens/login/widgets/social_media_botton.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: TSizes.appBarHeight,
              bottom: TSizes.defaultSpace,
              right: TSizes.defaultSpace,
              left: TSizes.defaultSpace),
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
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
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              SocialMediaButton()
            ],
          ),
        ),
      ),
    );
  }
}
