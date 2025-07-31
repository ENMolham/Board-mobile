import 'package:board_desktop/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double widthButton;
  final double heightButton;
  final Color colorButton;
  final Color colorText;
  final String text;
  final double sizeText;
  final double paddingTop;
  final double paddingRight;
  final void Function() onTap;
  final double radius;
  const CustomButton(
      {super.key,
      required this.widthButton,
      required this.heightButton,
      required this.colorButton,
      required this.colorText,
      required this.text,
      required this.sizeText,
      required this.paddingTop,
      required this.onTap,
      required this.radius,
      required this.paddingRight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, right: paddingRight),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: widthButton,
          height: heightButton,
          decoration: BoxDecoration(
            color: colorButton,
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          ),
          alignment: Alignment.center,
          child: CustomText(
            text: text,
            color: colorText,
            size: sizeText,
            fontWeight: FontWeight.bold,
            paddingTop: 0,
            paddingright: 0,
          ),
        ),
      ),
    );
  }
}
