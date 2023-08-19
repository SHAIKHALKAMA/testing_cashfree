// ignore_for_file: must_be_immutable, camel_case_types
import 'package:flutter/material.dart';
import 'package:testing_cashfree/features/home/home.dart';
import 'package:testing_cashfree/features/profile/profile.dart';
import 'package:testing_cashfree/utils/common_colors.dart';

class common_bottombar extends StatefulWidget {
   const common_bottombar({super.key});

  @override
  State<common_bottombar> createState() => _common_bottombarState();
}

class _common_bottombarState extends State<common_bottombar> {
   int _index=0;

    void ontapped(int index){
      setState(() {
        _index =index;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.colorWhiteShade1,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        // type: BottomNavigationBarType.shifting,
        onTap: ontapped,
        selectedItemColor: CommonColors.colorBlackShade1,
        unselectedItemColor: CommonColors.colorGreyShade14,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        showUnselectedLabels: true,
        items:<BottomNavigationBarItem>
         [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: _index==0?CommonColors.colorBlackShade1:CommonColors.colorGreyShade14,),
          label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_2,color: _index==1?CommonColors.colorBlackShade1:CommonColors.colorGreyShade14,),
          label: "Profile"),

        ],
      ),
      body: SafeArea(child: IndexedStack(
        index: _index,
        children:const [
          HomePage(),
          ProfilePage(),
        ],
      )),
    );
  }
}