import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/button.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final int index;
  final void Function() onTap1;
  final void Function() onTap2;
  const Buttons({
    super.key,
    required this.index,
    required this.onTap1,
    required this.onTap2,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: context.screenHeight * 0.07,
      child: Row(
        children: [
          CustomButton(
            widthButton: context.screenWidth * 0.25,
            heightButton: context.screenHeight * 0.05,
            colorButton: ColorConstant.white,
            colorText: index == 0
                ? ColorConstant.mainColor
                : ColorConstant.grey,
            text: "قيد المعالجة",
            sizeText: context.fontSize_12,
            paddingTop: context.screenHeight * 0.02,
            onTap: onTap1,
            radius: 8,
            paddingRight: context.screenWidth * 0.0409,
            border: Border(
              bottom: BorderSide(
                color: index == 0
                    ? ColorConstant.mainColor
                    : ColorConstant.grey,
                width: 3,
              ),
            ),
          ),
          CustomButton(
            widthButton: context.screenWidth * 0.25,
            heightButton: context.screenHeight * 0.05,
            colorButton: ColorConstant.white,
            colorText: index == 1
                ? ColorConstant.mainColor
                : ColorConstant.grey,
            text: "منتهية",
            sizeText: context.fontSize_12,
            paddingTop: context.screenHeight * 0.02,
            onTap: onTap2,
            radius: 8,
            paddingRight: context.screenWidth * 0.0409,
            border: Border(
              bottom: BorderSide(
                color: index == 1
                    ? ColorConstant.mainColor
                    : ColorConstant.grey,
                width: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
