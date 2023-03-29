import 'package:get/instance_manager.dart';
import 'bottom_nav_3_upload_feed_screen_controller.dart';

class BottomNav3UploadFeedScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BottomNav3UploadFeedScreenController());
  }
}