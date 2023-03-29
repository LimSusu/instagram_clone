import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'search_screen_controller.dart';

class SearchScreen extends GetView<SearchScreenController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('bottom_nav_2_search'));
  }
}
