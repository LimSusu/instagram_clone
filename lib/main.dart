import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:instagram_clone/routes/get_pages.dart';
import 'package:instagram_clone/routes/route_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'pretendard',
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: RouteNames.ENTRY,
      getPages: GetPages.pages,
    );
  }
}
