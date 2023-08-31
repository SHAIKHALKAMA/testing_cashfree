import 'package:flutter/material.dart';
import 'package:testing_cashfree/utils/common_colors.dart';
import 'package:testing_cashfree/utils/text_styles.dart';

import '../../../../utils/screen_constants.dart';

Widget exptile(tilemodal) {
    return ListTile(
      
                    title:Row(
                      children: [
                        Image.asset(tilemodal.iconimg,height: ScreenConstant.size20,),
                        SizedBox(width: ScreenConstant.size10,),
                     Text(tilemodal.text,style: TextStyles.textStyleSemiBold12.copyWith(color: CommonColors.colorBlackShade1),),
                      ],
                    )
                  );
  }
