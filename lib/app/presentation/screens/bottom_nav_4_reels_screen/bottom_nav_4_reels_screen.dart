import 'package:get/get.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'bottom_nav_4_reels_screen_controller.dart';

class BottomNav4ReelsScreen extends GetView<BottomNav4ReelsScreenController> {
  const BottomNav4ReelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('bottom_nav_4_reels')
    );
  }
}

// GetPage(
//   name: ,
//   page: () => const BottomNav4ReelsScreen(),
//   binding: BottomNav4ReelsScreenBinding(),
// )
