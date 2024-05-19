import 'package:get/get.dart';

class HomeControllers extends GetxController {
  static HomeControllers get instance => Get.find();
  final carouselPageIndicator = 0.obs;

  void updatePageIndicator(index) {
    carouselPageIndicator.value = index;
  }
}
