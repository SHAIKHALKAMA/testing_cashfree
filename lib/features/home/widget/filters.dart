import 'package:flutter/widgets.dart';

import '../../../utils/screen_constants.dart';
import '../Modals/filters.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
           );
  }
}