import 'package:flutter/material.dart';

import '../../constans.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint,  this.maxLines=1, this.onsaved});
final String hint;
final int maxLines;
final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onSaved:onsaved ,
      validator: (value) {
        if (value?.isEmpty ?? true){
          return "Please fill this field";
        }else{
          return null;  // No validation errors
        }
      },
      maxLines:maxLines ,
      decoration:InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color:kPrimeColor),
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
