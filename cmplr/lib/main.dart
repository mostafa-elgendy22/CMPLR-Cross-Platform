import 'cmplr_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/android_views/android_views.dart';
import 'views/android_views/intro_screen.dart';

Future<void> main() async {
  runApp(const CMPLR());
}

class CMPLR extends StatelessWidget {
  const CMPLR({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
      theme: CMPLRTheme.dark(),
      getPages: [
        GetPage(
            name: '/signup_preferences_search',
            page: () => SignupPreferencesSearch()),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/intro_screen', page: () => IntroScreen()),
        GetPage(
            name: '/EmailPasswordNameAfterSignup',
            page: () => const EmailPasswordNameAfterSignup()),
        GetPage(
            name: '/signup_preferences', page: () => const SignupPreferences()),
        GetPage(name: '/signup_age', page: () => const SignupAge()),
        GetPage(
            name: '/signup_preferences_search',
            page: () => const SignupPreferencesSearch()),
        GetPage(name: '/login', page: () => const Login()),
      ],
    );
  }
}
