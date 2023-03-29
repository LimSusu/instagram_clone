import 'package:get/instance_manager.dart';
import 'bottom_nav_2_search_screen_controller.dart';

class BottomNav2SearchScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BottomNav2SearchScreenController());
  }
}