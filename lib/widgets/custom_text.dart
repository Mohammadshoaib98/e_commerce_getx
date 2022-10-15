import 'package:flutter/material.dart';


class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final Alignment alignment;
  final FontWeight fontWeight;

  const CustomText(
      {super.key,
      this.text = '',
      this.fontSize = 18,
      this.color = Colors.black,
      this.alignment = Alignment.topLeft, this.fontWeight=FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: fontSize,fontWeight: fontWeight),
      ),
    );
  }
}
