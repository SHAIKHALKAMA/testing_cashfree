import 'package:flutter/widgets.dart';
import 'package:testing_cashfree/utils/common_colors.dart';
import 'package:testing_cashfree/utils/screen_constants.dart';

class filters extends StatelessWidget {
  filters({
    required this.icon,
    required this.text,
    super.key,
  });
  dynamic icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ScreenConstant.size8),
        color: CommonColors.colorWhiteShade2,
        border: Border.all(color: CommonColors.yellowShade1)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical:ScreenConstant.size6 ,horizontal: ScreenConstant.size10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(icon,height: 16,),
            Text(text),
          ],
        ),
      ),
    );
  }
}
