import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_cashfree/utils/common_colors.dart';
import 'package:testing_cashfree/utils/screen_constants.dart';

class cardscontainer extends StatelessWidget {
   cardscontainer({
    required this.images,
    required this.text,
    super.key,
  });
  dynamic images;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(ScreenConstant.size16)
         ),
         color: CommonColors.colorPinkShade1,
         child: SizedBox(
           height: ScreenConstant.size76,
           width: ScreenConstant.size76,
           child: Container(
             child: Image.asset(images,)),
         ),
        ),
        Text(text,style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
        ),)
      ],
    );
  }
}