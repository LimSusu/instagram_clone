import 'package:get/get.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'bottom_nav_5_profile_screen_controller.dart';

class BottomNav5ProfileScreen extends GetView<BottomNav5ProfileScreenController> {
  const BottomNav5ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('bottom_nav_5_profile')
    );
  }
}

// GetPage(
//   name: ,
//   page: () => const BottomNav5ProfileScreen(),
//   binding: BottomNav5ProfileScreenBinding(),
// )
