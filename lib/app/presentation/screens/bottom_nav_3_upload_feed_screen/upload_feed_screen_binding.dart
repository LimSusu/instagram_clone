import 'package:get/instance_manager.dart';
import 'upload_feed_screen_controller.dart';

class UploadFeedScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UploadFeedScreenController());
  }
}