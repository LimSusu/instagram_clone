import 'package:get/get.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'sign_in_screen_controller.dart';

class SignInScreen extends GetView<SignInScreenController> {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('sign_in')
    );
  }
}

// GetPage(
//   name: ,
//   page: () => const SignInScreen(),
//   binding: SignInScreenBinding(),
// )
