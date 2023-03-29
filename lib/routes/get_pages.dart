import 'package:get/get_navigation/get_navigation.dart';
import 'package:instagram_clone/app/presentation/screens/bottom_nav_1_feed_post_screen/bottom_nav_1_feed_post_screen_binding.dart';
import 'package:instagram_clone/app/presentation/screens/bottom_nav_2_search_screen/bottom_nav_2_search_screen_binding.dart';
import 'package:instagram_clone/app/presentation/screens/bottom_nav_3_upload_feed_screen/bottom_nav_3_upload_feed_screen_binding.dart';
import 'package:instagram_clone/app/presentation/screens/bottom_nav_4_reels_screen/bottom_nav_4_reels_screen_binding.dart';
import 'package:instagram_clone/app/presentation/screens/bottom_nav_5_profile_screen/bottom_nav_5_profile_screen_binding.dart';
import 'package:instagram_clone/app/presentation/screens/entry_screen/entry_screen.dart';
import 'package:instagram_clone/app/presentation/screens/entry_screen/entry_screen_binding.dart';
import 'package:instagram_clone/app/presentation/screens/main_indexed_stack_screen/main_indexed_stack_screen.dart';
import 'package:instagram_clone/app/presentation/screens/main_indexed_stack_screen/main_indexed_stack_screen_binding.dart';
import 'package:instagram_clone/app/presentation/screens/sign_in_screen/sign_in_screen.dart';
import 'package:instagram_clone/app/presentation/screens/sign_in_screen/sign_in_screen_binding.dart';
import 'package:instagram_clone/app/presentation/screens/sign_up_screen/sign_up_screen.dart';
import 'package:instagram_clone/app/presentation/screens/sign_up_screen/sign_up_screen_binding.dart';
import 'package:instagram_clone/routes/route_names.dart';

abstract class GetPages {
  static get pages => [
        GetPage(
          name: RouteNames.ENTRY,
          page: () => const EntryScreen(),
          binding: EntryScreenBinding(),
        ),
        GetPage(
          name: RouteNames.ENTRY + RouteNames.SIGN_IN,
          page: () => const SignInScreen(),
          binding: SignInScreenBinding(),
        ),
        GetPage(
          name: RouteNames.ENTRY + RouteNames.SIGN_UP,
          page: () => const SignUpScreen(),
          binding: SignUpScreenBinding(),
        ),
        GetPage(
          name: RouteNames.MAIN,
          page: () => const MainIndexedStackScreen(),
          bindings: [
            MainIndexedStackScreenBinding(),
            BottomNav1FeedPostScreenBinding(),
            BottomNav2SearchScreenBinding(),
            BottomNav3UploadFeedScreenBinding(),
            BottomNav4ReelsScreenBinding(),
            BottomNav5ProfileScreenBinding(),
          ],
        ),
      ];
}
