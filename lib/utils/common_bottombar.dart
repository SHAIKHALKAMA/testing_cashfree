import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:testing_cashfree/utils/common_colors.dart';

class common_bottombar extends StatelessWidget {
   common_bottombar({super.key});
int _index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.colorWhiteShade1,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedItemColor: CommonColors.colorBlackShade1,
        unselectedItemColor: CommonColors.colorGreyShade13,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        showUnselectedLabels: true,
        items:<BottomNavigationBarItem>
         [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: _index==0?CommonColors.colorBlackShade1:CommonColors.colorGreyShade13,),
          label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_2,color: _index==1?CommonColors.colorBlackShade1:CommonColors.colorGreyShade13,),
          label: "Profile"),

        ],
      ),
      body: SafeArea(child: IndexedStack(
        index: _index,
        children:const [
          
        ],
      )),
    );
  }
}