import 'package:flutter/widgets.dart';

import '../../../utils/screen_constants.dart';
import '../../../utils/text_styles.dart';

class Cuisines extends StatefulWidget {
  const Cuisines({super.key});

  @override
  State<Cuisines> createState() => _CuisinesState();
}

class _CuisinesState extends State<Cuisines> {
  List grimage=[
    "assets/images/biryani.png",
    "assets/images/biryani.png",
    "assets/images/chinese.png",
    "assets/images/chinese.png",
    "assets/images/dosa.png",
    "assets/images/dosa.png",
    "assets/images/pizza.png",
    "assets/images/pizza.png",
    
  ];
  List text=[
    "Biryani","Biryani","Chinese","Chinese","South Indian","South Indian","Pizza","Pizza"
  ];
      
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
                 padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16,vertical: ScreenConstant.size10),
                 child: Text("Ashraf, whats on your mind?",style: TextStyles.textStyleSemiBold16,),
               ),
      
           SizedBox(
            height: 200,
             child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
               child: Row(
                 children: [
                   GridView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: grimage.length,
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.04,), itemBuilder: (context,index){
                      return  Padding(
                        padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size10),
                        child: Column(
                          children: [
                            Image.asset(grimage[index],height: 80,),
                            Text(text[index],style: TextStyles.textStyleRegular12,)
                          ],
                        ),
                      );
                   }),
                   GridView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: grimage.length,
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.04,), itemBuilder: (context,index){
                      return  Padding(
                        padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size10),
                        child: Column(
                          children: [
                            Image.asset(grimage[index],height: 80,),
                            Text(text[index],style: TextStyles.textStyleRegular12,)
                          ],
                        ),
                      );
                   }),
                 ],
               ),
             ),
           ),
           ],
    );
  }
}