import 'package:get/get_utils/src/extensions/string_extensions.dart';

bool validateEmail(String email) {
  // return !email.isEmpty &&
  //     RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //         .hasMatch(email);

  return !email.isEmpty && email.isEmail;
}