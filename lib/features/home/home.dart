import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_cashfree/Widgets/cardscontainer.dart';
import 'package:testing_cashfree/utils/common_colors.dart';
import 'package:testing_cashfree/utils/screen_constants.dart';
import 'package:testing_cashfree/utils/text_styles.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: CommonColors.colorWhiteShade1,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: ScreenConstant.size10,horizontal: ScreenConstant.size18),
              child: Row(
                children:  [
                  Image.asset("assets/icon/location.png",height: ScreenConstant.size26,),
                  Padding(
                    padding: EdgeInsets.only(left: ScreenConstant.size6,right: ScreenConstant.size70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text('Delivery',style: GoogleFonts.poppins(color: CommonColors.colorGreyShade6,fontSize: ScreenConstant.size10),),
                        Row(
                          children:  [
                            Text('Riviera palm,Millat nagar',style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                            const Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: ScreenConstant.size16,
                    backgroundImage: const AssetImage("assets/images/dp3.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: ScreenConstant.size6,horizontal:ScreenConstant.size16 ),
              child: Container(
                height: ScreenConstant.size100,
                width: ScreenConstant.size360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ScreenConstant.size20),
                  color: CommonColors.colorPinkShade1,
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: ScreenConstant.size10,horizontal: ScreenConstant.size8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Icon(Icons.error,color: CommonColors.colorRedShade1,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order Delay Alert (60 - 90 min)",style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold
                            ),),
                             Text('Due to heavy rainfall, order delivery might take\nmore time than usual.Delivery time 60 - 90\nminutes',style: GoogleFonts.poppins(
                              fontSize: ScreenConstant.size12
                            ),)
                          ],
                        ),
                      ),
                      const Icon(Icons.close,size: 20,),
                    ],
                  ),
                ),
              ),
            ),
            Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: ScreenConstant.size10,horizontal: ScreenConstant.size18),
                  child: Image.asset("assets/images/freedeliverybanner.png",height:ScreenConstant.size250,width:ScreenConstant.size360,),
                ),
                 Positioned(
                  right: ScreenConstant.size30,
                  top: ScreenConstant.size20,
                  child: const Icon(Icons.close,color: CommonColors.colorWhiteShade1,)),
              ],
              ),
               Padding(
                 padding: EdgeInsets.symmetric(vertical: ScreenConstant.size10,horizontal: ScreenConstant.size18),
                 child: SizedBox(
                  height: ScreenConstant.size56,
                   child: TextField(
                    cursorColor: CommonColors.colorBlackShade1,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: CommonColors.colorPinkShade1,
                      prefix: Padding(
                        padding:  EdgeInsets.only(left: 
                        ScreenConstant.size10,right: ScreenConstant.size10,),
                        child: Image(image: const AssetImage("assets/icon/searchIcon.png"),width: ScreenConstant.size18,),
                      ),
                      hintText: "Search for restaurant, item, or more",
                      hintStyle: GoogleFonts.poppins(fontSize: ScreenConstant.size13),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(ScreenConstant.size16),
                        borderSide: BorderSide.none
                      )
                    ),
                               ),
                 ),
               ),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16),
                physics: const BouncingScrollPhysics(),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     cardscontainer(images: "assets/images/card1.png",text: "Food",),
                     cardscontainer(images: "assets/images/card2.png",text: "Self Pickup",),
                     cardscontainer(images: "assets/images/card3.png",text: "Grocery",),
                     cardscontainer(images: "assets/images/card4.png",text: "Flip",),
                     cardscontainer(images: "assets/images/card5.png",text: "Meat",)
                   ],
                 ),
               ),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                 child: Row(
                   children: [
                     Padding(
                       padding:EdgeInsets.symmetric(horizontal: ScreenConstant.size16,),
                       child: Image.asset("assets/images/banner1.png",height: ScreenConstant.size210,),
                     ),
                     Image.asset("assets/images/banner2.png",height: ScreenConstant.size210,),
                     Padding(
                       padding:EdgeInsets.symmetric(horizontal: ScreenConstant.size16,vertical: ScreenConstant.size20),
                       child: Image.asset("assets/images/banner3.png",height: ScreenConstant.size210,),
                     ),
                   ],
                 ),
               ),
                Text("Recommended for You",style: TextStyles.textStyleBold16,),
                ListView.builder(itemBuilder: ((context, index) {
                  return Container(
                    height: ScreenConstant.size100,
                    width: ScreenConstant.size290,
                    color: CommonColors.colorPinkShade1,
                  )
                }))
               
               
          ],
        ),
      ),

    );
        
    
  
  }
}

