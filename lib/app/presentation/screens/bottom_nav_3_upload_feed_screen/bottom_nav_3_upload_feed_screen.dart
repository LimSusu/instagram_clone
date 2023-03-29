import 'package:get/get.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'bottom_nav_3_upload_feed_screen_controller.dart';

class BottomNav3UploadFeedScreen extends GetView<BottomNav3UploadFeedScreenController> {
  const BottomNav3UploadFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('bottom_nav_3_upload_feed')
    );
  }
}

// GetPage(
//   name: ,
//   page: () => const BottomNav3UploadFeedScreen(),
//   binding: BottomNav3UploadFeedScreenBinding(),
// )
