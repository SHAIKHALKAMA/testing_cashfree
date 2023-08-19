import 'package:flutter/material.dart';

import '../../../utils/common_colors.dart';
import '../../../utils/screen_constants.dart';
import '../../../utils/text_styles.dart';

class Infocard extends StatelessWidget {
  const Infocard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenConstant.size90,
      // width: ScreenConstant.size320,
      child: Card(
        color: CommonColors.colorGreyShade11,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(ScreenConstant.size14),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: ScreenConstant.size10,
            horizontal: ScreenConstant.size16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: ScreenConstant.size70,
                width: ScreenConstant.size70,
                child: const CircleAvatar(
                  child: Image(
                    image: AssetImage("assets/images/avatar.png"),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    "Asad Ansari",
                    style: TextStyles.textStyleBold18,
                  ),
                  Text(
                    "+91 9028533091",
                    style: TextStyles.textStyleMedium16
                        .copyWith(color: CommonColors.colorGreyShade14),
                  ),
                  Text(
                    "asadansari@gmail.com",
                    style: TextStyles.textStyleMedium18
                        .copyWith(color: CommonColors.colorGreyShade14),
                  )
                ],
              ),
              SizedBox(
                height: ScreenConstant.size34,
                width: ScreenConstant.size34,
                child: Card(
                    color: CommonColors.colorPinkShade2,
                    // margin: EdgeInsets.symmetric(vertical: ScreenConstant.size10,horizontal: ScreenConstant.size10),
                    child: Padding(
                      padding: EdgeInsets.all(ScreenConstant.size6),
                      child: Image.asset("assets/icon/edit.png"),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
