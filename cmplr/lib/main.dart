import 'cmplr_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/android_views/android_views.dart';

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
      theme: CMPLRTheme.dark(),
      home: const SignupPreferences(),
      getPages: [
        GetPage(
            name: '/EmailPasswordNameAfterSignup',
            page: () => const EmailPasswordNameAfterSignup()),
        GetPage(
            name: '/signup_preferences', page: () => const SignupPreferences()),
        GetPage(name: '/signup_age', page: () => const SignupAge()),
        GetPage(
            name: '/signup_preferences_search',
            page: () => const SignupPreferencesSearch()),
      ],
    );
  }
}
