import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_cashfree/utils/routes/myroutes.dart';

import '../../../utils/common_colors.dart';
import '../../../utils/screen_constants.dart';
import '../Modals/RestoModals.dart';


class searchbar extends StatefulWidget {
  const searchbar({super.key});

  @override
  State<searchbar> createState() => _searchbarState();
}

class _searchbarState extends State<searchbar> {
  // List  ArrListview = List.from(Recommendedmodellist);

  // void updatelist(String value){
  //   setState(() {
  //     ArrListview=Recommendedmodellist.where((element) => element.hname.toLowerCase().contains(value.toLowerCase())).toList();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.symmetric (
                  vertical: ScreenConstant.size10,
                  horizontal: ScreenConstant.size18),
              child: SizedBox(
                height: ScreenConstant.size56,
                width: ScreenConstant.size350,
                child: TextField(
                  onTap: (){
                    Navigator.pushNamed(context, RouteConstants.searchpage);
                  },
                  cursorColor: CommonColors.colorBlackShade1,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: CommonColors.yellowShade1,
                          prefixIcon: Container( 
                            padding:EdgeInsets.symmetric(horizontal: ScreenConstant.size10,vertical: ScreenConstant.size18),
                            child: Image.asset('assets/icon/search2.png')),
                      hintText: "Search for restaurant, item, or more",
                      hintStyle:
                          GoogleFonts.poppins(fontSize: ScreenConstant.size13),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(ScreenConstant.size16),
                          borderSide: BorderSide.none)),
                ),
              ),
            );
  }
}