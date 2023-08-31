import 'package:flutter/widgets.dart';
import '../../../../utils/common_colors.dart';
import '../../../../utils/screen_constants.dart';
import '../../../../utils/text_styles.dart';

class button extends StatefulWidget {
  const button({super.key});

  @override
  State<button> createState() => buttonState();
}

class buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding:EdgeInsets.symmetric(vertical: ScreenConstant.size10,horizontal: ScreenConstant.size20),
            child: Container(
                height: ScreenConstant.size50,
                width: ScreenConstant.size360,
                decoration: BoxDecoration(
                  color: CommonColors.yellowShade2,
                  borderRadius: BorderRadius.circular(ScreenConstant.size12)
                ),
                child: Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Update",style: TextStyles.textStyleSemiBold16,),
                    Image.asset("assets/icon/editinfo.png",height: ScreenConstant.size16,)
                  ],
                )),
              ),
          );
  }
}