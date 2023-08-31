import 'package:flutter/material.dart';
import 'package:testing_cashfree/utils/common_colors.dart';
import 'package:testing_cashfree/utils/screen_constants.dart';
import '../../../../utils/text_styles.dart';
import '../widget/Accounteditinfo.dart';
import '../widget/Expansioncontainer.dart';
import '../widget/Logoutbutton.dart';
import '../widget/expansiontile2_3main.dart';

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
        backgroundColor: CommonColors.colorWhiteShade2,
          body:Padding(
            padding:  EdgeInsets.symmetric(vertical: ScreenConstant.size10,horizontal: ScreenConstant.size20),
            child: SingleChildScrollView(
              child: Column(
                     children: [
                         const Accounteitinfo(),
                         const Expansioncontainer(),
                         const expansiontile2_3main(),
                         const SizedBox(
                          height: 35,
                         ),
                         const Logoutbutton(),
                          const SizedBox(
                          height: 05,
                         ),
                         Text("App Version 2.00",style: TextStyles.textStyleSemiBold10.copyWith(color: CommonColors.colorGreyShade2),),
                    ],
                  ),
            ),
          ),
        ),
    );
  }
}

