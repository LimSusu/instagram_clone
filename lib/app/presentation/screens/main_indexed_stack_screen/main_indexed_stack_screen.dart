import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app/presentation/screens/bottom_nav_1_feed_post_screen/feed_post_screen.dart';
import 'package:instagram_clone/app/presentation/screens/bottom_nav_2_search_screen/search_screen.dart';
import 'package:instagram_clone/app/presentation/screens/bottom_nav_3_upload_feed_screen/upload_feed_screen.dart';
import 'package:instagram_clone/app/presentation/screens/bottom_nav_4_reels_screen/reels_screen.dart';
import 'package:instagram_clone/app/presentation/screens/bottom_nav_5_profile_screen/profile_screen.dart';

import 'main_indexed_stack_screen_controller.dart';

class MainIndexedStackScreen extends GetView<MainIndexedStackScreenController> {
  const MainIndexedStackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex,
          children: const [
            FeedPostScreen(),
            SearchScreen(),
            UploadFeedScreen(),
            ReelsScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return SafeArea(
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black.withOpacity(0.1),
              width: 1.0,
            ),
          ),
        ),
        child: Obx(
          () => BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: controller.currentIndex,
            onTap: controller.onTap,
            backgroundColor: Colors.white,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: controller.currentIndex == 0
                    ? SvgPicture.asset('assets/icons/home_selected.svg')
                    : SvgPicture.asset('assets/icons/home.svg'),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: controller.currentIndex == 1
                    ? SvgPicture.asset('assets/icons/search_selected.svg')
                    : SvgPicture.asset('assets/icons/search.svg'),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/add.svg'),
                label: 'add feed',
              ),
              BottomNavigationBarItem(
                icon: controller.currentIndex == 3
                    ? SvgPicture.asset('assets/icons/reels_selected.svg')
                    : SvgPicture.asset('assets/icons/reels.svg'),
                label: 'reels',
              ),
              // TODO: 이후 프로필 사진으로 변경 필요
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 24,
                ),
                label: 'profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
