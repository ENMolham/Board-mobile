import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final double paddingTop;
  final double paddingright;
  final FontWeight fontWeight;
  const CustomText({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    required this.fontWeight,
    required this.paddingTop,
    required this.paddingright,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, right: paddingright),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight),
        textAlign: TextAlign.center,
      ),
    );
  }
}
