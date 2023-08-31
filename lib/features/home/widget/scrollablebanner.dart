import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/widgets.dart';

import '../../../utils/screen_constants.dart';

class scrollablebanner extends StatefulWidget {
  const scrollablebanner({super.key});

  @override
  State<scrollablebanner> createState() => _scrollablebannerState();
}

class _scrollablebannerState extends State<scrollablebanner> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(items: [
            Image.asset("assets/images/banner1.png", height: ScreenConstant.size210),
            Image.asset("assets/images/banner2.png", height: ScreenConstant.size210),
            Image.asset("assets/images/banner3.png", height: ScreenConstant.size210),
          ], 
          options: CarouselOptions(
            height: 200,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            autoPlay: true,
            viewportFraction: 0.7,
          ),
          );
  }
}