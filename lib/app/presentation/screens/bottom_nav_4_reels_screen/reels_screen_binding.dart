import 'package:get/instance_manager.dart';
import 'reels_screen_controller.dart';

class ReelsScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ReelsScreenController());
  }
}