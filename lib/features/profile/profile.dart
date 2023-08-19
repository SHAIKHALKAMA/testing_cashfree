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
            padding:EdgeInsets.symmetric(vertical: ScreenConstant.size20,horizontal: ScreenConstant.size20),
            child: Column(
                children: [
            SizedBox(
              height: ScreenConstant.size90,
              // width: ScreenConstant.size320,
              child: Card(
                color: CommonColors.colorGreyShade11,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(ScreenConstant.size14),
                  ),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      
                    ),
                    Column(
                      children:const [
                        
                        Text("Asad Ansari"),
                        Text("+91 9028533091"),
                        Text("asadansari@gmail.com")
                      ],
                    )
                  ],
                ),
              ),
            )
                ],
              ),
          )),
    );
  }
}
