import 'package:flutter/widgets.dart';

import '../../../../utils/common_colors.dart';
import '../../../../utils/screen_constants.dart';
import '../../../../utils/text_styles.dart';

class Logoutbutton extends StatelessWidget {
  const Logoutbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenConstant.size50,
      width: ScreenConstant.size360,
      decoration: BoxDecoration(
        color: CommonColors.yellowShade2,
        borderRadius: BorderRadius.circular(ScreenConstant.size12)
      ),
      child: Center(child: Text("Logout",style: TextStyles.textStyleSemiBold16.copyWith(color: CommonColors.colorWhiteShade1),)),
    );
  }
}

