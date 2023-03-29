import 'package:get/get.dart';
import 'package:instagram_clone/routes/route_names.dart';

class EntryScreenController extends GetxController {
  // 로그인
  void onLoginButtonTap() {
    Get.toNamed(RouteNames.MAIN);
  }
}