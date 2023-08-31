import 'package:flutter/material.dart';
import 'package:testing_cashfree/features/profile/mainprofilescreen/mainscreen/profile.dart';
import 'package:testing_cashfree/utils/common_colors.dart';
import 'package:testing_cashfree/utils/screen_constants.dart';
import 'package:testing_cashfree/utils/text_styles.dart';
import '../Modals/textfield.dart';
import '../widgets/button.dart';
import '../widgets/profilepicture.dart';
import '../widgets/textfieldcontainer.dart';

class Editprofilepage extends StatefulWidget {
  const Editprofilepage({super.key});

  @override
  State<Editprofilepage> createState() => _EditprofilepageState();
}

class _EditprofilepageState extends State<Editprofilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(ScreenConstant.size20),bottomRight: Radius.circular(ScreenConstant.size20)
          )
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: CommonColors.yellowShade1,
        title:Text("Edit Profile",style: TextStyles.textStyleBold18),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Image.asset("assets/icon/back.png")),
      ),
      body: Column(
        children: const [
          profilepicture(),
          textfield(),
          button(),
      ]),
    );
  }
}

