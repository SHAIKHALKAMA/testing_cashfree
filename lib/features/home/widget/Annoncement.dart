import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_cashfree/utils/screen_constants.dart';

import '../../../utils/common_colors.dart';

class Announcement extends StatefulWidget {
  const Announcement({super.key});

  @override
  State<Announcement> createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  bool _isVisible1=true;
   void _togglecontainer1visible(){
    setState(() {
      _isVisible1=!_isVisible1;
    });
   }

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding:_isVisible1?EdgeInsets.symmetric(
                  vertical: ScreenConstant.size6,
                  horizontal: ScreenConstant.size16):const EdgeInsets.all(0),
              child: Stack(
                children: [
                   Visibility(
                    visible: _isVisible1,
                     child: Padding(
                       padding: EdgeInsets.symmetric(vertical: ScreenConstant.size4),
                       child: Container(
                                       height: ScreenConstant.size100,
                                       width: ScreenConstant.size350,
                                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ScreenConstant.size20),
                        color: CommonColors.yellowShade1,
                                       ),
                                       child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: ScreenConstant.size10,
                            horizontal: ScreenConstant.size8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.error,
                              color: CommonColors.colorRedShade1,
                              size: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: ScreenConstant.size6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Order Delay Alert (60 - 90 min)",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Due to heavy rainfall, order delivery might take\nmore time than usual.Delivery time 60 - 90\nminutes',
                                    style: GoogleFonts.poppins(
                                        fontSize: ScreenConstant.size12),
                                  )
                                ],
                              ),
                            ),
                             
                          ],
                        ),
                                       ),
                                     ),
                     ),
                   ),
                Positioned(
                  right: ScreenConstant.size8,
                  child: IconButton(
                    onPressed:_togglecontainer1visible,
                    icon: const Icon(Icons.close)))
                ],
              ),
            );
  }
}