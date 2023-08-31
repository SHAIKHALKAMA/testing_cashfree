import 'package:flutter/material.dart';
import 'package:testing_cashfree/utils/common_colors.dart';
import 'package:testing_cashfree/utils/screen_constants.dart';
import 'package:testing_cashfree/utils/text_styles.dart';

class searchpage extends StatefulWidget {
  const searchpage({super.key});

  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
               Padding(
                 padding:EdgeInsets.symmetric(vertical: ScreenConstant.size2,horizontal: ScreenConstant.size16),
                 child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search for resturant and food",
                    suffixIcon: Icon(Icons.close,color: CommonColors.colorBlackShade1,),
                    border: InputBorder.none,
                  ),
                             ),
               ),
              SizedBox(
                height: ScreenConstant.size40,
                child: TabBar(
                  padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16),
                  indicatorColor: CommonColors.yellowShade3,
                 tabs:[
                    Tab(
                      icon:Row(
                        children: [
                          Image.asset("assets/icon/cuisines2.png",height: ScreenConstant.size20,),
                          SizedBox(
                            width: ScreenConstant.size10,
                          ),
                          Text("RESTURANT",style: TextStyles.textStyleRegular12,),
                        ],
                      ),
                  
                    ),
                    Tab(icon:  Row(
                      children: [
                        Image.asset("assets/icon/dish.png",height: ScreenConstant.size20,),
                        SizedBox(
                            width: ScreenConstant.size10,
                          ),
                        Text("DISHES",style: TextStyles.textStyleRegular12,),
                      ],
                    ),)
                 
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}