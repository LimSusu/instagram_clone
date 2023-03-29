import 'package:get/get.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'entry_screen_controller.dart';

class EntryScreen extends GetView<EntryScreenController> {
  const EntryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('entry')
    );
  }
}

// GetPage(
//   name: ,
//   page: () => const EntryScreen(),
//   binding: EntryScreenBinding(),
// )
