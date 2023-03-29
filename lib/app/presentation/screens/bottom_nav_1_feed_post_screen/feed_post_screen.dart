import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'feed_post_screen_controller.dart';

class FeedPostScreen extends GetView<FeedPostScreenController> {
  const FeedPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('bottom_nav_1_feed_post'));
  }
}
