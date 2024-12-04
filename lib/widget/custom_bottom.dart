
import 'package:flutter/material.dart';

import '../constans.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key,  required this.ontap});
final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap ,
      child: Container(
          height: 56,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: kPrimeColor,
          ),
          child: Center(
            child: Text(
              'Add',
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
