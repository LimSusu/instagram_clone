import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'profile_screen_controller.dart';

class ProfileScreen extends GetView<ProfileScreenController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('bottom_nav_5_profile'));
  }
}
