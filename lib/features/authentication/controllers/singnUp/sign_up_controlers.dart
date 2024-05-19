import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/data/repositories/authentication_epository.dart';
import 'package:t_store/data/repositories/user/user_repository.dart';
import 'package:t_store/features/authentication/models/usermode/usermodel.dart';
import 'package:t_store/features/authentication/screens/signUp/verify_email.dart';
import 'package:t_store/utils/helpers/network_manager.dart';
import 'package:t_store/utils/popups/full_screen_loader.dart';
import 'package:t_store/utils/popups/loaders.dart';

import '../../../../utils/constants/image_strings.dart';

class SignUpControllers extends GetxController {
  static SignUpControllers get instance => Get.find();
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final PhoneNo = TextEditingController();
  final Password = TextEditingController();
  GlobalKey<FormState> signUpKey = GlobalKey<FormState>();

  void signUp() async {
    try {
      // start loading
      FullScreenLoader.openLoading();
      // connect network
      final isConnected = await NetworkManager.instance.isConnected;
      if (isConnected == false) {
        FullScreenLoader.stopLoading();
        return;
      }
      // form validation
      if (!signUpKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }
      // privacy policy
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
            title: "Accept Privacy Policy",
            message:
                "In order to create an account, you must have to accept privacy policy");
        return;
      }
      // register user in firebase authentication ande save data
      final usercredential = await AuthenticationRepository.instance
          .resisterWithEmailAndPassword(
              email.text.trim(), Password.text.trim());

      final newUser = UserModel(
          id: usercredential.user!.uid,
          email: email.text.trim(),
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          userName: userName.text.trim(),
          phoneNumber: PhoneNo.text.trim(),
          password: Password.text.trim());

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecords(newUser);

      FullScreenLoader.stopLoading();
      // success message
      TLoaders.successSnackbar(
          title: "Congratulations",
          message: " your account has been created successfully");
      // move to verify email screen
      Get.to(() => VerifyEmail());
    } catch (e) {
      FullScreenLoader.stopLoading();
      TLoaders.errorSnackbar(title: "Oh snap", message: e.toString());
    }
  }
}
