import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  CustomText({
    this.text ="",
    this.color,
    this.fontSize,
    this.fontWeight
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text, style: TextStyle(
        fontFamily: "JosefinSans",
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight
      ),
    );
  }
}