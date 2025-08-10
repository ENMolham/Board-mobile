import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String text;
  final String value;
  const CustomRow({super.key, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          color: ColorConstant.black,
          size: context.fontSize_16,
          fontWeight: FontWeight.bold,
          paddingTop: context.screenHeight * 0.0125,
          paddingright: context.screenWidth * 0.0318,
        ),
        CustomText(
          text: value,
          color: ColorConstant.grey,
          size: context.fontSize_16,
          fontWeight: FontWeight.bold,
          paddingTop: context.screenHeight * 0.0125,
          paddingright: context.screenWidth * 0.009,
        ),
      ],
    );
  }
}
