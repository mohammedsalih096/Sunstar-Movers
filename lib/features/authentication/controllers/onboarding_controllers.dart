import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get_storage/get_storage.dart";
import "package:t_store/features/authentication/screens/login/login.dart";

class onboardingController extends GetxController {
  static onboardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentIndex = 0.obs;

  void updatePageIndex(index) => currentIndex.value = index;
  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentIndex.value == 2) {
      final storage = GetStorage();
      storage.write("isFirstTime", false);
      Get.offAll(() => LoginScreen());
    } else {
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
