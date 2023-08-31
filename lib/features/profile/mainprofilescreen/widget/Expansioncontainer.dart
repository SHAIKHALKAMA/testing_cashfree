
import 'package:flutter/material.dart';

import '../../../../utils/common_colors.dart';
import '../../../../utils/screen_constants.dart';
import '../../../../utils/text_styles.dart';
import '../Modals/tilesmodal.dart';
import 'tile.dart';

class Expansioncontainer extends StatefulWidget {
  const Expansioncontainer({super.key});

  @override
  State<Expansioncontainer> createState() => _ExpansioncontainerState();
}

class _ExpansioncontainerState extends State<Expansioncontainer> {
   bool _isExpand=false;
  
  void _Expand(bool){
    setState(() {
      _isExpand=!_isExpand;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding:  EdgeInsets.symmetric(horizontal: ScreenConstant.size4,vertical: ScreenConstant.size10),
              child: Container(
                // height: ScreenConstant.size70,
                // width: ScreenConstant.size330,
                decoration:BoxDecoration(borderRadius:
                   BorderRadius.circular(ScreenConstant.size10,),color: CommonColors.yellowShade1
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: ScreenConstant.size4),
                  child: Column(
                    children: [
                      ExpansionTile(
                        shape: const RoundedRectangleBorder(
                          side: BorderSide.none
                        ),
                        trailing: Padding(
                          padding: EdgeInsets.only(bottom: ScreenConstant.size16),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration:  BoxDecoration(
                              color:CommonColors.yellowShade1, 
                              borderRadius: BorderRadius.circular(ScreenConstant.size6),
                              border: Border.all(color: CommonColors.colorBlackShade1,width: 1.5)
                            ),
                            child: _isExpand ?  const Icon(Icons.keyboard_arrow_up_rounded,size: 16,color: CommonColors.colorBlackShade1):const Icon(Icons.keyboard_arrow_down_rounded,size: 16,color: CommonColors.colorBlackShade1),
                          ),
                        ),
                        onExpansionChanged:_Expand,
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My Account",style: TextStyles.textStyleSemiBold16,),
                          Text("Manage Address, Favorites, Orders, Wallet,",style: TextStyles.textStyleRegular12.copyWith(color: Colors.grey)),
                        ],
                      ),
                      children: [
                        Container(
                          color: CommonColors.colorWhiteShade2,
                          child: Column(
                            children: [
                              ...tile.map((e) {
                            return exptile(e);
                          }).toList(),
                            ],
                          ),
                        ),
                      ],
                      ),
                      
                    ],
                  ),
                ),
              ),
            );
  }
  
}
  