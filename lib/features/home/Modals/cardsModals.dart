import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widget/cardscontainer.dart';
import '../../../utils/screen_constants.dart';

class cards extends StatefulWidget {
  const cards({super.key});

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16),
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  cardscontainer(
                    images: "assets/images/card1.png",
                    text: "Food",
                  ),
                  cardscontainer(
                    images: "assets/images/card2.png",
                    text: "Self Pickup",
                  ),
                  cardscontainer(
                    images: "assets/images/card3.png",
                    text: "Grocery",
                  ),
                  cardscontainer(
                    images: "assets/images/card4.png",
                    text: "Flip",
                  ),
                  cardscontainer(
                    images: "assets/images/card5.png",
                    text: "Meat",
                  )
                ],
              ),
            );
  }
}