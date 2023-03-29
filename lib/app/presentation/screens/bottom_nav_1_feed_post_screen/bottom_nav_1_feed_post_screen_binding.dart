import 'package:get/instance_manager.dart';
import 'bottom_nav_1_feed_post_screen_controller.dart';

class BottomNav1FeedPostScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BottomNav1FeedPostScreenController());
  }
}