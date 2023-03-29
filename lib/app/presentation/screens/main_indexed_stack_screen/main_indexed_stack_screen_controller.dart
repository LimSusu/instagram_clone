import 'package:get/get.dart';

class MainIndexedStackScreenController extends GetxController{
  final _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;

  void onTap(int index) {
    _currentIndex(index);
  }
}