import 'package:get/get.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'bottom_nav_2_search_screen_controller.dart';

class BottomNav2SearchScreen extends GetView<BottomNav2SearchScreenController> {
  const BottomNav2SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('bottom_nav_2_search')
    );
  }
}

// GetPage(
//   name: ,
//   page: () => const BottomNav2SearchScreen(),
//   binding: BottomNav2SearchScreenBinding(),
// )
