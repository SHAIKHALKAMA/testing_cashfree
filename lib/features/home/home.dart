import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_cashfree/utils/common_colors.dart';

import '../../utils/routes/myroutes.dart';
import '../../utils/screen_constants.dart';
import 'widget/Annoncement.dart';
import 'widget/Cuisines.dart';
import 'widget/Filters.dart';
import 'Modals/Recommended.dart';
import 'widget/Resturant.dart';
import 'widget/TopOferrs.dart';
import 'Modals/cardsModals.dart';
import 'widget/homepagebanner.dart';
import 'widget/scrollablebanner.dart';
import 'widget/searchbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.colorWhiteShade1,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        flexibleSpace:Container(
          decoration: BoxDecoration(
            color: CommonColors.yellowShade1,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(ScreenConstant.size20),bottomRight: Radius.circular(ScreenConstant.size20),
            
          ),),
          child:  Padding(
          padding:EdgeInsets.symmetric(horizontal: ScreenConstant.size16),
          child: Row(      
                  children: [
                    Image.asset(
                      "assets/icon/location.png",
                      height: ScreenConstant.size26,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: ScreenConstant.size6,top: ScreenConstant.size10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivery',
                            style: GoogleFonts.poppins(
                                color: CommonColors.colorGreyShade6,
                                fontSize: ScreenConstant.size10),
                          ),
                          Row(
                            children: [
                              Text('Riviera palm,Millat nagar',
                                  style: GoogleFonts.poppins(
                                      color: CommonColors.colorBlackShade1,
                                      fontSize: ScreenConstant.size14,
                                      fontWeight: FontWeight.bold)),
                              const Icon(Icons.keyboard_arrow_down_rounded,color: CommonColors.colorBlackShade1,)
                            ],
                          )
                        ],
                      ),
                    ),
                     SizedBox(width: ScreenConstant.size60,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, RouteConstants.profile);
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: ScreenConstant.size8,horizontal: ScreenConstant.size8),
                            child: Container(
                              height: ScreenConstant.size40,
                              width: ScreenConstant.size40,
                                decoration: BoxDecoration(
                                  border: Border.all(color:CommonColors.yellowShade3),
                                  shape: BoxShape.circle
                                ),
                               child:CircleAvatar(
                                 radius: ScreenConstant.size16,
                                 backgroundImage: const AssetImage("assets/images/dp3.png"),  
                               ),
                               ),
                          ),
                              
                        ],
                      ),
                    )
                  ],
                ),
        ),
        ),
            ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Announcement(),
            homepagebanner(),
            searchbar(),
            cards(),
            scrollablebanner(),
            Recommended(),
            Cuisines(),
            TopOffers(),
            Filters(),
            Resturant(),


           
           
          ],
        ),
      ),
    );

  }

}



