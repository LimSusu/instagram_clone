import 'package:get/instance_manager.dart';
import 'bottom_nav_5_profile_screen_controller.dart';

class BottomNav5ProfileScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BottomNav5ProfileScreenController());
  }
}