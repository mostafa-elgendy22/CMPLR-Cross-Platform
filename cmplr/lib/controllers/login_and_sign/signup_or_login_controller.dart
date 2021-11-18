import 'package:get/get.dart';
import '../../views/login_and_sign/android_views.dart';

class IntroController extends GetxController {
  Future<void> signIn() async {
    Get.to(
      const Login(),
      transition: Transition.downToUp,
    );
    update();
  }

  Future<void> signUp() async {
    Get.to(
      const SignupAge(),
      transition: Transition.downToUp,
    );
    update();
  }
}