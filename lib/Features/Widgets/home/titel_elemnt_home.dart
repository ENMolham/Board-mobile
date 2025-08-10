import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class TitelElemntHome extends StatelessWidget {
  final String text;
  final void Function() onTap;
  final double paddingRight;
  const TitelElemntHome({
    super.key,
    required this.text,
    required this.onTap,
    required this.paddingRight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          color: ColorConstant.black,
          size: context.fontSize_18,
          fontWeight: FontWeight.bold,
          paddingTop: context.screenHeight * 0.04,
          paddingright: context.screenWidth * 0.0409,
        ),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.only(
              right: paddingRight,
              top: context.screenHeight * 0.004,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "المزيد",
                  color: ColorConstant.grey,
                  size: context.fontSize_14,
                  fontWeight: FontWeight.bold,
                  paddingTop: context.screenHeight * 0.04,
                  paddingright: context.screenWidth * 0.0409,
                ),
                Padding(
                  padding: EdgeInsets.only(top: context.screenHeight * 0.04),
                  child: Icon(
                    Icons.arrow_right,
                    size: context.screenWidth * 0.0568,
                    color: ColorConstant.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
