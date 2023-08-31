import 'package:flutter/widgets.dart';

import '../../../utils/screen_constants.dart';
import '../../../utils/text_styles.dart';

class TopOffers extends StatefulWidget {
  const TopOffers({super.key});

  @override
  State<TopOffers> createState() => _TopOffersState();
}

class _TopOffersState extends State<TopOffers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
                 padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16,vertical: ScreenConstant.size10),
                 child: Text("Top offer’s around you",style: TextStyles.textStyleSemiBold16,),
               ),
           SingleChildScrollView(
            padding: EdgeInsetsDirectional.symmetric(horizontal: ScreenConstant.size16),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
             child: Row(
              children: [
                Image.asset("assets/images/50%off.png",height: ScreenConstant.size70,width: ScreenConstant.size80,),
                const SizedBox(width: 10,),
                Image.asset("assets/images/30%off.png",height: ScreenConstant.size70,width: ScreenConstant.size80,),
                const SizedBox(width: 10,),
                Image.asset("assets/images/25%off.png",height: ScreenConstant.size70,width: ScreenConstant.size80,),
                const SizedBox(width: 10,),
                Image.asset("assets/images/20%off.png",height: ScreenConstant.size70,width: ScreenConstant.size80,),
                const SizedBox(width: 10,),
                Image.asset("assets/images/15%off.png",height: ScreenConstant.size70,width: ScreenConstant.size80,),
                const SizedBox(width: 10,),
                Image.asset("assets/images/10%off.png",height: ScreenConstant.size70,width: ScreenConstant.size80,),
              ],
             ),
           ),
           ],
    );
  }
}