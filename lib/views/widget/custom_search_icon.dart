import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05),
      ),
      child: IconButton(onPressed: () {  }, icon: Icon(icon,color: Colors.white,size: 24,)
      ),
    );
  }
}

