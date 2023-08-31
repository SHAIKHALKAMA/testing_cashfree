import 'package:get/get.dart';
import 'package:testing_cashfree/features/home/home.dart';
import 'package:testing_cashfree/features/profile/mainprofilescreen/mainscreen/profile.dart';
import 'package:testing_cashfree/utils/common_bottombar.dart';
import 'package:testing_cashfree/utils/routes/myroutes.dart';

import '../../features/home/widget/searchpage.dart';
import '../../features/profile/Editscreen/mainscreen/Editprofilepage.dart';

class NavRouter {
  static final generateRoute = [
    GetPage(
      name: RouteConstants.bottomview,
      page: () => const common_bottombar(),
    ),GetPage(
      name: RouteConstants.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: RouteConstants.profile,
      page: () => const ProfilePage(),
    ),
    GetPage(
      name: RouteConstants.Editprofilepage,
      page: () => const Editprofilepage(),
    ),
    GetPage(
      name: RouteConstants.searchpage,
      page: () => const searchpage(),
    ),
  ];
}
