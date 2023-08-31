import 'package:flutter/material.dart';
import 'package:testing_cashfree/utils/screen_constants.dart';
import '../../../utils/text_styles.dart';
import '../widget/Restocontainer.dart';

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:EdgeInsets.symmetric(horizontal: ScreenConstant.size16),
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
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hname: 'Fire Wings', images:"assets/images/resto1.png" , tym: '30 mins' ,off: '230 for two',),
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 5% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hname: 'Bhiwandi Darbar', images:"assets/images/resto1a.png" , tym: '30 mins' ,off: '230 for two',),
                   ],
                 ),
                 Column(
                   children: [
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 10% OFF', Slogo: "assets/images/veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hname: 'Mamaji Pavbhaji', images:"assets/images/resto2.png" , tym: '30 mins' ,off: '230 for two',),
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hname: 'Anna’s Kitchen', images:"assets/images/resto2a.png" , tym: '30 mins' ,off: '230 for two',),
                   ],
                 ),
                 Column(
                   children: [
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 10% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hname: 'A-1 Seekh Paratha', images:"assets/images/resto3.png" , tym: '30 mins' ,off: '230 for two',),
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 5% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hname: 'Bhiwandi Darbar', images:"assets/images/resto1a.png" , tym: '30 mins' ,off: '230 for two',),
                   ],
                 ),
                 Column(
                   children: [
                     restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/non-veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hname: 'Fire Wings', images:"assets/images/resto1.png" , tym: '30 mins' ,off: '230 for two',),
                      restocontainer(Address: 'Near Hafiz Baba Dargah', Soff: 'upto 15% OFF', Slogo: "assets/images/veg.png", cont1: 'Burger', Star: '4.3', cont3: 'Wings', cont2: 'Pizza', hname: 'Anna’s Kitchen', images:"assets/images/resto2a.png" , tym: '30 mins' ,off: '230 for two',),
                   ],
                 ),
                 
               ],
             ),
           ),
           ],
    );
  }
}