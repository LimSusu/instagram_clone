import 'package:get/instance_manager.dart';
import 'feed_post_screen_controller.dart';

class FeedPostScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(FeedPostScreenController());
  }
}