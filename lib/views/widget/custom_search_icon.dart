import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon,  this.onpressed});
  final IconData icon;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05),
      ),
      child: IconButton(onPressed: onpressed, icon: Icon(icon,color: Colors.white,size: 24,)
      ),
    );
  }
}

