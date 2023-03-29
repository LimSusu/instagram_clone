import 'package:get/get.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'main_indexed_stack_screen_controller.dart';

class MainIndexedStackScreen extends GetView<MainIndexedStackScreenController> {
  const MainIndexedStackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('main_indexed_stack')
    );
  }
}

// GetPage(
//   name: ,
//   page: () => const MainIndexedStackScreen(),
//   binding: MainIndexedStackScreenBinding(),
// )
