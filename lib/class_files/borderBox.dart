import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {
  final String name;
  final double width, height;
  final Color myColor;
   
  const BorderBox({
    Key? key,
    required this.name,
    required this.height, 
    required this.width,
    required this.myColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Center(child: Text(name, style: TextStyle(color: Colors.white),)),
      color: myColor,
    );
  }
}
