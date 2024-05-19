import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controllers.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../../utils/device/device_utility.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        right: TSizes.defaultSpace,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: dark ? TColors.primary : Colors.black),
            onPressed: () => onboardingController.instance.nextPage(),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}
