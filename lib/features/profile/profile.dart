import 'package:flutter/material.dart';
import 'package:testing_cashfree/features/profile/widget/info.dart';
import 'package:testing_cashfree/utils/common_colors.dart';
import 'package:testing_cashfree/utils/screen_constants.dart';
import 'package:testing_cashfree/utils/text_styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: ScreenConstant.size20, horizontal: ScreenConstant.size20),
        child:  const Column(
          children: [
            Infocard(),
            ExpansionTile(
              title: Text("My Account"),
              subtitle: Text("Manage Address,Favorites,order,wallet...."),)
          ],
        ),
      )),
    );
  }
}
