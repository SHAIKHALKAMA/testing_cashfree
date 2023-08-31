import 'package:flutter/material.dart';

import '../../../utils/common_colors.dart';
import '../../../utils/screen_constants.dart';
import '../../../utils/text_styles.dart';
import '../Modals/RestoModals.dart';

class Resturant extends StatefulWidget {
  const Resturant({super.key});

  @override
  State<Resturant> createState() => _ResturantState();
}

class _ResturantState extends State<Resturant> {
  List ArrListview=List.from(Recommendedmodellist);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
                 padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16),
                 child: Text("210 Restaurants around you",style: TextStyles.textStyleSemiBold16,),
               ),
           ListView.builder(
            itemCount: ArrListview.length,
            shrinkWrap: true,
            physics:const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
             return Padding(
               padding:  EdgeInsets.symmetric(vertical: ScreenConstant.size4,horizontal: ScreenConstant.size16),
               child: Container(
                height: ScreenConstant.size100,
                width: ScreenConstant.size350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ScreenConstant.size12),
                  color: CommonColors.yellowShade1
                ),
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                padding: EdgeInsets.only(
                  top: ScreenConstant.size10,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenConstant.size10),
                  child:
                      Image.asset(
                        ArrListview[index].images,
                        width: ScreenConstant.size70,
                      ),
                ),
                ),
                Padding(
                padding:  EdgeInsets.symmetric(vertical: ScreenConstant.size6),
                child: SizedBox(
                  height: ScreenConstant.size90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            ArrListview[index].hname,
                            style: TextStyles.textStyleBold16,
                          ),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: ScreenConstant.size16,
                            width: ScreenConstant.size50,
                            decoration: BoxDecoration(
                              color: CommonColors.yellowShade1,
                              borderRadius: BorderRadius.circular(
                                  ScreenConstant.size4),
                            ),
                            child: Center(
                                child: Text(
                              ArrListview[index].cont1,
                              style: TextStyles.textStyleRegular12
                                  .copyWith(color: Colors.grey[500]),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: ScreenConstant.size16,
                            width: ScreenConstant.size50,
                            decoration: BoxDecoration(
                                color: CommonColors.colorBlueShade2,
                                borderRadius: BorderRadius.circular(
                                    ScreenConstant.size4)),
                            child: Center(
                                child: Text(
                              ArrListview[index].cont2,
                              style: TextStyles.textStyleRegular12
                                  .copyWith(color: Colors.grey[500]),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: ScreenConstant.size16,
                            width: ScreenConstant.size50,
                            decoration: BoxDecoration(
                                color: CommonColors.colorWhiteShade2,
                                borderRadius: BorderRadius.circular(
                                    ScreenConstant.size4)),
                            child: Center(
                                child: Text(
                              ArrListview[index].cont3,
                              style: TextStyles.textStyleRegular12
                                  .copyWith(color: Colors.grey[500]),
                            )),
                          ),
                        ],
                      ),
                      Text(
                        ArrListview[index].Address,
                        style: TextStyles.textStyleRegular12.copyWith(
                            color:
                                const Color.fromARGB(255, 173, 173, 173)),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: Color.fromARGB(255, 245, 206, 33),
                            size: 16,
                          ),
                          Text(
                            ArrListview[index].Star,
                            style: TextStyles.textStyleRegular12
                                .copyWith(color: Colors.grey),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.watch_later_rounded,color: CommonColors.colorGreenShade3,size: 12,),
                              Text(
                              ArrListview[index].tym + "•",
                                style: TextStyles.textStyleRegular12
                                    .copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ),
              ],
            ),
               ),
             );
           },),
           ],
    );
  }
}