import 'package:flutter/material.dart';
import 'package:testing_cashfree/utils/common_colors.dart';
import 'package:testing_cashfree/utils/screen_constants.dart';
import 'package:testing_cashfree/utils/text_styles.dart';

class restocontainer extends StatelessWidget {
  dynamic images;
  String hname;
  String cont1;
  String cont2;
  String cont3;
  String Address;
  String Star;
  String tym;
   String off;
  String Soff;
  dynamic Slogo;
  restocontainer({
    required this.images,
    required this.hname,
    required this.cont1,
    required this.cont2,
    required this.cont3,
    required this.Address,
    required this.Star, 
    required this.tym,
    required this.off,
    required this.Slogo,
    required this.Soff,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: ScreenConstant.size16, top: ScreenConstant.size10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: ScreenConstant.size100,
            width: ScreenConstant.size290,
            decoration: BoxDecoration(
                color: CommonColors.yellowShade1,
                borderRadius:
                    BorderRadius.circular(ScreenConstant.size12)),
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
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          images,
                          width: ScreenConstant.size70,
                        ),
                        Positioned(
                            top: ScreenConstant.size60,
                            child: Card(
                              color: CommonColors.colorPinkShade1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      ScreenConstant.size4)),
                              child: Container(
                                height: ScreenConstant.size18,
                                width: ScreenConstant.size60,
                                decoration: BoxDecoration(
                                    color:
                                        CommonColors.colorGreenShade3,
                                    borderRadius: BorderRadius.circular(
                                        ScreenConstant.size6)),
                                child: Center(
                                    child: Text(
                                  Soff,
                                  style: TextStyles.textStyleSemiBold08
                                      .copyWith(
                                    color: Colors.white,
                                  ),
                                )),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          hname,
                          style: TextStyles.textStyleBold16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            cont1,
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
                            cont2,
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
                            cont3,
                            style: TextStyles.textStyleRegular12
                                .copyWith(color: Colors.grey[500]),
                          )),
                        ),
                      ],
                    ),
                    Text(
                      Address,
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
                          Star,
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
                            "$tym  •",
                              style: TextStyles.textStyleRegular12
                                  .copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                         Row(
                          children: [
                            const Icon(Icons.currency_rupee_sharp,size: 12,color:Colors.grey,),
                            Text(
                             off,
                              style: TextStyles.textStyleRegular12
                                  .copyWith(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              right: ScreenConstant.size10,
              top: ScreenConstant.size14,
              child: Image.asset(
                Slogo,
                height: 20,
              )),
        ],
      ),
    );
  }

}