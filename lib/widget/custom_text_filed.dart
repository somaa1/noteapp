import 'package:flutter/material.dart';

import '../constans.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint,  this.maxLines=1});
final String hint;
final int maxLines;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines:maxLines ,
      decoration:InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color:KprimeColor),
        hintText: hint,
     //   hintStyle: TextStyle(color: KprimeColor),

      )

    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
borderSide: BorderSide(color: color ?? Colors.white)
      );
  }
}
