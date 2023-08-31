import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../utils/common_colors.dart';
import '../../../../utils/screen_constants.dart';
import '../../../../utils/text_styles.dart';

class textfieldcontainer extends StatelessWidget {
  textfieldcontainer({
    required this.hint,
    required this.label,
    required this.iconimg,
    super.key,
  });
  String hint;
  String label;
  dynamic iconimg;

  @override
  Widget build(BuildContext context) {
    return  Padding(
           padding:EdgeInsets.symmetric(horizontal: ScreenConstant.size20,vertical: ScreenConstant.size10),
    child:SizedBox(
      height: ScreenConstant.size50,
      child: TextField(
       decoration:InputDecoration(
         labelText:label,
         labelStyle: TextStyles.textStyleLight12,
         hintText: hint,
         hintStyle: TextStyles.textStyleSemiBold16,
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(ScreenConstant.size12),
         ),
         filled:true,
         fillColor: CommonColors.yellowShade1,
         enabled:true,
         enabledBorder: OutlineInputBorder(
               borderSide: const BorderSide(
                 color: CommonColors.yellowShade2
               ),
               borderRadius: BorderRadius.circular(ScreenConstant.size16)
         ),
         focusedBorder: OutlineInputBorder(
           borderSide: const BorderSide(
             color: CommonColors.yellowShade2
           ),
           borderRadius: BorderRadius.circular(ScreenConstant.size16)
         )
         )
       ),
    ),);
  }
}