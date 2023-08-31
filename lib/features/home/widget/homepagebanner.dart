import 'package:flutter/material.dart';
import '../../../utils/common_colors.dart';
import '../../../utils/screen_constants.dart';

class homepagebanner extends StatefulWidget {
  const homepagebanner({super.key});

  @override
  State<homepagebanner> createState() => _homepagebannerState();
}

class _homepagebannerState extends State<homepagebanner> {
  bool _isVisible2=true;
   void _toggleDeliveryImagevisible(){
    setState(() {
      _isVisible2=!_isVisible2;
    });
   }
  @override
  Widget build(BuildContext context) {
    return Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                Padding(
                  padding:_isVisible2?EdgeInsets.symmetric(
                      horizontal: ScreenConstant.size16,vertical: ScreenConstant.size6):const EdgeInsets.all(0),
                  child: Visibility(
                    visible: _isVisible2,
                    child: Image.asset(
                      "assets/images/freedeliverybanner.png",
                      height: ScreenConstant.size250,
                      width: ScreenConstant.size350,
                    ),
                  ),
                ),
                Positioned(
                    right: ScreenConstant.size20,
                    child: IconButton(
                      onPressed:_toggleDeliveryImagevisible,
                      icon:const Icon(Icons.close,
                      color: CommonColors.colorWhiteShade1,
                    ))),
              ],
            );
  }
}