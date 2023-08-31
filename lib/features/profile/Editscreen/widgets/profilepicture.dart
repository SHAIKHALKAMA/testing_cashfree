import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:testing_cashfree/features/profile/Editscreen/widgets/pickimage.dart';

import '../../../../utils/common_colors.dart';
import '../../../../utils/screen_constants.dart';

class profilepicture extends StatefulWidget {
  const profilepicture({super.key});

  @override
  State<profilepicture> createState() => _profilepictureState();
}

class _profilepictureState extends State<profilepicture> {
    Uint8List? _image;

  void selectImage()async{
    Uint8List? img = await pickImage(ImageSource.gallery);
    setState(() {
      _image=img;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: ScreenConstant.size30),
            child: Stack(
              children:[
                _image !=null?
                Container(
                height: ScreenConstant.size120,
                width: ScreenConstant.size120,
                decoration:BoxDecoration(
                  boxShadow:[ BoxShadow(
                    spreadRadius: ScreenConstant.size2,
                    blurRadius: ScreenConstant.size10,
                    color: CommonColors.yellowShade3.withOpacity(0.2)
                  )],
                  color: CommonColors.yellowShade1,
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(BorderSide(
                    color: CommonColors.yellowShade3,
                    width: ScreenConstant.size4,
                  ))
                ),
                child:  Padding(
                  padding: EdgeInsets.all(ScreenConstant.size6),
                  child:  CircleAvatar(
                    backgroundImage: MemoryImage(_image!),
                  ),
                ),
              ):
               Container(
                height: ScreenConstant.size120,
                width: ScreenConstant.size120,
                decoration:BoxDecoration(
                  boxShadow:[ BoxShadow(
                    spreadRadius: ScreenConstant.size2,
                    blurRadius: ScreenConstant.size10,
                    color: CommonColors.yellowShade3.withOpacity(0.2)
                  )],
                  color: CommonColors.yellowShade1,
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(BorderSide(
                    color: CommonColors.yellowShade3,
                    width: ScreenConstant.size4,
                  ))
                ),
                child:  Padding(
                  padding: EdgeInsets.all(ScreenConstant.size6),
                  child:   const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/dp3.png"),
                  ),
                ),
              ),
               Positioned(
                bottom: ScreenConstant.size0,
                right: ScreenConstant.size0,
                child:Container(
                  height: ScreenConstant.size40,
                  width: ScreenConstant.size40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: ScreenConstant.size4,
                      color: CommonColors.yellowShade3
                    ),
                    color: CommonColors.yellowShade1,
                  ),
                  child:  Center(
                    child: IconButton(icon:Icon(Icons.add_a_photo_outlined,size: ScreenConstant.size20,),onPressed: selectImage,
                    ),
                  ),
                ) 
                )
              ],
            ),
          ),
        );
  }
}