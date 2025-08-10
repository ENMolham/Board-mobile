import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomRowPressed extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final IconData iconRight;
  final Color colorIconRight;
  final IconData iconLeft;
  final double paddingIconRight;
  const CustomRowPressed({
    super.key,
    required this.text,
    required this.onPressed,
    required this.iconRight,
    required this.colorIconRight,
    required this.iconLeft,
    required this.paddingIconRight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.0418,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: context.screenWidth * 0.0272),
            child: Icon(
              iconRight,
              color: colorIconRight,
              size: context.screenWidth * 0.045,
            ),
          ),
          CustomText(
            text: text,
            color: ColorConstant.black,
            size: context.fontSize_14,
            fontWeight: FontWeight.bold,
            paddingTop: 0,
            paddingright: context.screenWidth * 0.018,
          ),
          Padding(
            padding: EdgeInsets.only(right: paddingIconRight),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                iconLeft,
                size: context.screenWidth * 0.035,
                color: ColorConstant.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
