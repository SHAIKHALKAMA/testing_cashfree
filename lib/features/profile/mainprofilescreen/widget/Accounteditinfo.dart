import 'package:flutter/material.dart';
import 'package:testing_cashfree/utils/routes/myroutes.dart';

import '../../../../utils/screen_constants.dart';
import '../../../../utils/text_styles.dart';

class Accounteitinfo extends StatelessWidget {
  const Accounteitinfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenConstant.size90,
      child: Card(
        elevation: 0,
        color: const Color.fromARGB(255, 253, 247, 229),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(ScreenConstant.size14),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size10),
          child: Row(
            children: [
               CircleAvatar(
                radius: ScreenConstant.size26,
                backgroundImage: const AssetImage("assets/images/dp3.png"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ScreenConstant.size10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Asad Ansari",style: TextStyles.textStyleBold16,),
                    Text("+91 9028533091",style: TextStyles.textStyleRegular12.copyWith(color: Colors.grey)),
                     Text("asadansari@gmail.com",style: TextStyles.textStyleRegular12.copyWith(color: Colors.grey))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: ScreenConstant.size56,bottom: ScreenConstant.size30),
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 250, 235, 189),
                    borderRadius: BorderRadius.circular(ScreenConstant.size10),
                  ),
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal: ScreenConstant.size8,vertical: ScreenConstant.size8),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, RouteConstants.Editprofilepage);
                      },
                      child: Image.asset("assets/icon/edit.png",)),
                  ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
