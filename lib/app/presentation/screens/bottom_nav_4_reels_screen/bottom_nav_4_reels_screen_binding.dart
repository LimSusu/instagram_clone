import 'package:get/instance_manager.dart';
import 'bottom_nav_4_reels_screen_controller.dart';

class BottomNav4ReelsScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BottomNav4ReelsScreenController());
  }
}