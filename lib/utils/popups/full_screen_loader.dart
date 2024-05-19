import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/constants/colors.dart';

class FullScreenLoader {
  static void openLoading() {
    showDialog(
        context: Get.overlayContext!,
        builder: (
          _,
        ) =>
            PopScope(
                canPop: false,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(color: TColors.light),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 250,
                      ),
                      Center(child: CircularProgressIndicator())
                    ],
                  ),
                )));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
