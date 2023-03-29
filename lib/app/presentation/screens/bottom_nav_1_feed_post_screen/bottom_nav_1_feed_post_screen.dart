import 'package:get/get.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'bottom_nav_1_feed_post_screen_controller.dart';

class BottomNav1FeedPostScreen extends GetView<BottomNav1FeedPostScreenController> {
  const BottomNav1FeedPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('bottom_nav_1_feed_post')
    );
  }
}

// GetPage(
//   name: ,
//   page: () => const BottomNav1FeedPostScreen(),
//   binding: BottomNav1FeedPostScreenBinding(),
// )
