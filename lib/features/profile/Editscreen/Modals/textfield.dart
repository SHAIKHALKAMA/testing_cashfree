import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/textfieldcontainer.dart';

class textfield extends StatefulWidget {
  const textfield({super.key});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textfieldcontainer(hint:"Asad Ansari",label:  "Username",iconimg: "assets/icon/user.png"),
         textfieldcontainer(hint: "asadansari@gmail.com", label: "e-mail", iconimg: "assets/icon/email.png"),
         textfieldcontainer(hint: "+91 9028533091", label: "mobile", iconimg: "assets/icon/contact.png"),
      ],
    );
  }
}