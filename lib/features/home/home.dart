import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_cashfree/utils/common_colors.dart';
import 'package:testing_cashfree/utils/screen_constants.dart';
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
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: ScreenConstant.size10,horizontal: ScreenConstant.size16),
        child: Column(
          children: [
            Row(
              children:  [
                Image.asset("assets/icon/location.png",height: ScreenConstant.size26,),
                Padding(
                  padding: EdgeInsets.only(left: ScreenConstant.size6,right: ScreenConstant.size70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text('Delivery',style: GoogleFonts.poppins(color: CommonColors.colorGreyShade6),),
                      Row(
                        children:  [
                          Text('Riviera palm,Millat nagar',style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                          const Icon(Icons.keyboard_arrow_down_rounded)
                        ],
                      )
                    ],
                  ),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/dp3.png"),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: ScreenConstant.size10,bottom: ScreenConstant.size10 ),
              child: Container(
                height: ScreenConstant.size110,
                width: ScreenConstant.size340,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Order Delay Alert (60 - 90 min)",style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold
                          ),),
                           Text('Due to heavy rainfall, order delivery might take\n more time than usual.Delivery time 60 - 90\n minutes',style: GoogleFonts.poppins(
                            fontSize: ScreenConstant.size12
                          ),)
                        ],
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
                Image.asset("assets/images/freedeliverybanner.png",height:ScreenConstant.size250,),
                 Positioned(
                  right: ScreenConstant.size10,
                  top: ScreenConstant.size10,
                  child: const Icon(Icons.close,color: CommonColors.colorWhiteShade1,)),
              ],
              ),
               Padding(
                 padding: EdgeInsets.symmetric(vertical: ScreenConstant.size16,horizontal: ScreenConstant.size8),
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
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
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
               )
          ],
        ),
      ),

    );
        
    
  
  }
}

class cardscontainer extends StatelessWidget {
   cardscontainer({
    required this.images,
    required this.text,
    super.key,
  });
  dynamic images;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(ScreenConstant.size16)
         ),
         color: CommonColors.colorPinkShade1,
         child: SizedBox(
           height: ScreenConstant.size76,
           width: ScreenConstant.size76,
           child: Container(
             child: Image.asset(images,)),
         ),
        ),
        Text(text,style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
        ),)
      ],
    );
  }
}