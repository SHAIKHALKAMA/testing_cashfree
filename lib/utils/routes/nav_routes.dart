import 'package:get/get.dart';
import 'package:testing_cashfree/features/home/home.dart';
import 'package:testing_cashfree/features/profile/profile.dart';
import 'package:testing_cashfree/utils/routes/myroutes.dart';

class nav_routes{
  static final generateroutes=[
   GetPage(name: Myroutes.home, page: ()=>const HomePage()),
   GetPage(name: Myroutes.Profile, page:() =>  const ProfilePage(),),
   
  ];
}