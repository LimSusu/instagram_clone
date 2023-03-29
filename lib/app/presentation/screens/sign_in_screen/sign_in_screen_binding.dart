import 'package:get/instance_manager.dart';
import 'sign_in_screen_controller.dart';

class SignInScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SignInScreenController());
  }
}