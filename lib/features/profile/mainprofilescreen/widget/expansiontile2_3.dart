import 'package:flutter/material.dart';

import '../../../../utils/common_colors.dart';
import '../../../../utils/screen_constants.dart';
import '../../../../utils/text_styles.dart';

Widget expansiontile2_3details(tiles2_3modals) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: ScreenConstant.size4,horizontal: ScreenConstant.size4),
      child: Container(
                          height: ScreenConstant.size60,
                          width: ScreenConstant.size360,
                           decoration:BoxDecoration(borderRadius:
                             BorderRadius.circular(ScreenConstant.size10,),
                             color: CommonColors.yellowShade1
                                       ),
                           child: ExpansionTile(
                            shape: const RoundedRectangleBorder(
                              side: BorderSide.none
                            ),
                            trailing: Container(
                              height: ScreenConstant.size18,
                              width: ScreenConstant.size18,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.5,
                                  color: CommonColors.colorBlackShade1),
                                borderRadius: BorderRadius.circular(ScreenConstant.size6),
                              ),
                              child: const Icon(Icons.arrow_forward_ios_rounded,size: 10,color:CommonColors.colorBlackShade2,),
                            ),
                            title: Row(
                             children: [
                               Image.asset(tiles2_3modals.Img,height: ScreenConstant.size20),
                               SizedBox(width: ScreenConstant.size10,),
                                Text(tiles2_3modals.text,style: TextStyles.textStyleMedium14),
                             ],
                           ),
                           ),
                         ),
    );
  }