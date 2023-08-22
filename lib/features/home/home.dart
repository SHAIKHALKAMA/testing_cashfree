import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing_cashfree/Widgets/cardscontainer.dart';
import 'package:testing_cashfree/features/home/widget/Restocontainer.dart';
import 'package:testing_cashfree/features/home/widget/filters.dart';
import 'package:testing_cashfree/utils/common_colors.dart';
import 'package:testing_cashfree/utils/screen_constants.dart';
import 'package:testing_cashfree/utils/text_styles.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  // Asharaf,whats on your mind
  List grimage=[
    "assets/images/biryani.png",
    "assets/images/biryani.png",
    "assets/images/chinese.png",
    "assets/images/chinese.png",
    "assets/images/dosa.png",
    "assets/images/dosa.png",
    "assets/images/pizza.png",
    "assets/images/pizza.png",
    
  ];
  List text=[
    "Biryani","Biryani","Chinese","Chinese","South Indian","South Indian","Pizza","Pizza"
  ];
  @override
  Widget build(_) {
    return Scaffold(
      backgroundColor: CommonColors.colorWhiteShade1,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: ScreenConstant.size10,
                  horizontal: ScreenConstant.size18),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icon/location.png",
                    height: ScreenConstant.size26,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: ScreenConstant.size6,
                        right: ScreenConstant.size70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivery',
                          style: GoogleFonts.poppins(
                              color: CommonColors.colorGreyShade6,
                              fontSize: ScreenConstant.size10),
                        ),
                        Row(
                          children: [
                            Text('Riviera palm,Millat nagar',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                            const Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: ScreenConstant.size16,
                    backgroundImage: const AssetImage("assets/images/dp3.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: ScreenConstant.size6,
                  horizontal: ScreenConstant.size16),
              child: Container(
                height: ScreenConstant.size100,
                width: ScreenConstant.size350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ScreenConstant.size20),
                  color: CommonColors.colorPinkShade1,
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
                      const Icon(
                        Icons.close,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreenConstant.size10,
                      horizontal: ScreenConstant.size16),
                  child: Image.asset(
                    "assets/images/freedeliverybanner.png",
                    height: ScreenConstant.size250,
                    width: ScreenConstant.size350,
                  ),
                ),
                Positioned(
                    right: ScreenConstant.size30,
                    top: ScreenConstant.size20,
                    child: const Icon(
                      Icons.close,
                      color: CommonColors.colorWhiteShade1,
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: ScreenConstant.size10,
                  horizontal: ScreenConstant.size18),
              child: SizedBox(
                height: ScreenConstant.size56,
                width: ScreenConstant.size350,
                child: TextField(
                  cursorColor: CommonColors.colorBlackShade1,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: CommonColors.colorPinkShade1,
                      prefix: Padding(
                        padding: EdgeInsets.only(
                          left: ScreenConstant.size10,
                          right: ScreenConstant.size10,
                        ),
                        child: Image(
                          image: const AssetImage("assets/icon/searchIcon.png"),
                          width: ScreenConstant.size18,
                        ),
                      ),
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
            ),
            SingleChildScrollView(
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
            ),
          CarouselSlider(items: [
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
          ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16),
              child: Text(
                "Recommended for You",
                style: TextStyles.textStyleSemiBold16,
              ),
            ),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
             child: Row(
               children: [
                 Column(
                   children: [
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: 'Fire Wings', images:"assets/images/resto1.png" , tym: '30 mins  •  ₹230 for two',),
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 5% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: 'Bhiwandi Darbar', images:"assets/images/resto1a.png" , tym: '30 mins  •  ₹230 for two',),
                   ],
                 ),
                 Column(
                   children: [
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 10% OFF', Slogo: "assets/images/veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: 'Mamaji Pavbhaji', images:"assets/images/resto2.png" , tym: '30 mins  •  ₹230 for two',),
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: 'Anna’s Kitchen', images:"assets/images/resto2a.png" , tym: '30 mins  •  ₹230 for two',),
                   ],
                 ),
                 Column(
                   children: [
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 10% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: 'A-1 Seekh Paratha', images:"assets/images/resto3.png" , tym: '30 mins  •  ₹230 for two',),
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 5% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: 'Bhiwandi Darbar', images:"assets/images/resto1a.png" , tym: '30 mins  •  ₹230 for two',),
                   ],
                 ),
                 Column(
                   children: [
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: 'Fire Wings', images:"assets/images/resto1.png" , tym: '30 mins  •  ₹230 for two',),
                      restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: 'Anna’s Kitchen', images:"assets/images/resto2a.png" , tym: '30 mins  •  ₹230 for two',),
                   ],
                 ),
                 
               ],
             ),
           ),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16,vertical: ScreenConstant.size10),
             child: Text("Ashraf, whats on your mind?",style: TextStyles.textStyleSemiBold16,),
           ),
           SizedBox(
            height: 200,
             child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
               child: Row(
                 children: [
                   GridView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: grimage.length,
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.04,), itemBuilder: (context,index){
                      return  Padding(
                        padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size10),
                        child: Column(
                          children: [
                            Image.asset(grimage[index],height: 80,),
                            Text(text[index],style: TextStyles.textStyleRegular12,)
                          ],
                        ),
                      );
                   }),
                   GridView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: grimage.length,
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.04,), itemBuilder: (context,index){
                      return  Padding(
                        padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size10),
                        child: Column(
                          children: [
                            Image.asset(grimage[index],height: 80,),
                            Text(text[index],style: TextStyles.textStyleRegular12,)
                          ],
                        ),
                      );
                   }),
                 ],
               ),
             ),
           ),
          Padding(
             padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16,vertical: ScreenConstant.size10),
             child: Text("Top offer’s around you",style: TextStyles.textStyleSemiBold16,),
           ),
           SingleChildScrollView(
            padding: EdgeInsetsDirectional.symmetric(horizontal: ScreenConstant.size16),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
             child: Row(
              children: [
                Image.asset("assets/images/50%off.png",height: ScreenConstant.size70,width: ScreenConstant.size80,),
                const SizedBox(width: 10,),
                Image.asset("assets/images/30%off.png",height: ScreenConstant.size70,width: ScreenConstant.size80,),
                const SizedBox(width: 10,),
                Image.asset("assets/images/25%off.png",height: ScreenConstant.size70,width: ScreenConstant.size80,),
                const SizedBox(width: 10,),
                Image.asset("assets/images/20%off.png",height: ScreenConstant.size70,width: ScreenConstant.size80,),
                const SizedBox(width: 10,),
                Image.asset("assets/images/15%off.png",height: ScreenConstant.size70,width: ScreenConstant.size80,),
                const SizedBox(width: 10,),
                Image.asset("assets/images/10%off.png",height: ScreenConstant.size70,width: ScreenConstant.size80,),
              ],
             ),
           ),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16,vertical: ScreenConstant.size10),
            physics: const BouncingScrollPhysics(),
             child: Row(
              children: [
                filters(icon: "assets/icon/sort.png", text: 'Filter',),
                const SizedBox(width: 10,),
                filters(icon: "assets/icon/location1.png", text: 'Nearby'),
                const SizedBox(width: 10,),
                filters(icon: "assets/icon/toprate.png", text: 'Top Rated'),
                const SizedBox(width: 10,),
                filters(icon: "assets/icon/fastdel.png", text: 'Fastest Delivery'),
                const SizedBox(width: 10,),
                filters(icon: "assets/icon/pocket.png", text: 'Pocket Friendly'),
                const SizedBox(width: 10,),
                filters(icon: "assets/icon/newarrival.png", text: 'New Arrival'),
              ],
             ),
           ),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16,vertical: ScreenConstant.size10),
             child: Text("Top offer’s around you",style: TextStyles.textStyleSemiBold16,),
           ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16,vertical: ScreenConstant.size6),
            child: Container(
              height: ScreenConstant.size110,
              width: ScreenConstant.size350,
              decoration: BoxDecoration(
                color: CommonColors.colorPinkShade1,
                borderRadius: BorderRadius.circular(ScreenConstant.size12)
              ),
              child: restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: 'Fire Wings', images:"assets/images/resto1.png" , tym: '30 mins  •  ₹230 for two',)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16,vertical: ScreenConstant.size6),
            child: Container(
              height: ScreenConstant.size110,
              width: ScreenConstant.size350,
              decoration: BoxDecoration(
                color: CommonColors.colorPinkShade1,
                borderRadius: BorderRadius.circular(ScreenConstant.size12)
              ),
              child: restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: 'Bhiwandi Darbar', images:"assets/images/resto1a.png" , tym: '30 mins  •  ₹230 for two',)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16,vertical: ScreenConstant.size6),
            child: Container(
              height: ScreenConstant.size110,
              width: ScreenConstant.size350,
              decoration: BoxDecoration(
                color: CommonColors.colorPinkShade1,
                borderRadius: BorderRadius.circular(ScreenConstant.size12)
              ),
              child: restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: 'Mamaji Pavbhaji', images:"assets/images/resto2.png" , tym: '30 mins  •  ₹230 for two',)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16,vertical: ScreenConstant.size6),
            child: Container(
              height: ScreenConstant.size110,
              width: ScreenConstant.size350,
              decoration: BoxDecoration(
                color: CommonColors.colorPinkShade1,
                borderRadius: BorderRadius.circular(ScreenConstant.size12)
              ),
              child: restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: "Anna'S Kitchen", images:"assets/images/resto2a.png" , tym: '30 mins  •  ₹230 for two',)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size16,vertical: ScreenConstant.size6),
            child: Container(
              height: ScreenConstant.size110,
              width: ScreenConstant.size350,
              decoration: BoxDecoration(
                color: CommonColors.colorPinkShade1,
                borderRadius: BorderRadius.circular(ScreenConstant.size12)
              ),
              child: restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hotelname: "French Fries", images:"assets/images/resto3a.png" , tym: '30 mins  •  ₹230 for two',)),
          ),
          ],
        ),
      ),
    );

  }

}



