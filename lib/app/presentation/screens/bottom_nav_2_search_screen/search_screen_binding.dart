import 'package:get/instance_manager.dart';
import 'search_screen_controller.dart';

class SearchScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SearchScreenController());
  }
}