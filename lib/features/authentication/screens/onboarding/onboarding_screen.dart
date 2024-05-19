import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controllers.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboardingNavigation.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboardingPage.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboardingSkip.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboardingutton.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndex,
            children: const [
              OnboardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subtitle: TTexts.onBoardingSubTitle1),
              OnboardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subtitle: TTexts.onBoardingSubTitle2),
              OnboardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subtitle: TTexts.onBoardingSubTitle3),
            ],
          ),
          const OnboardingSkip(),
          const OnboardingNavigation(),
          const OnboardingButton()
        ],
      ),
    );
  }
}
