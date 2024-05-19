import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/bindings/general_binding.dart';

import 'package:t_store/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: GeneralBindings(),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        home: Scaffold(
          backgroundColor: TColors.primary,
          body: Center(
              child: CircularProgressIndicator(
            color: Colors.white,
          )),
        ));
  }
}
