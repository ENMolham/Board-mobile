import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class ContainerDetailsMyTransaction extends StatelessWidget {
  final String text1;
  final String text2;
  const ContainerDetailsMyTransaction({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.screenHeight * 0.0125),
      child: Container(
        width: context.screenWidth * 0.918,
        height: context.screenHeight * 0.091,
        decoration: BoxDecoration(
          color: ColorConstant.whitebackground,
          border: Border.all(color: ColorConstant.mainColor, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: text1,
              color: ColorConstant.mainColor,
              size: context.fontSize_16,
              fontWeight: FontWeight.bold,
              paddingTop: context.screenHeight * 0.0146,
              paddingright: context.screenWidth * 0.0272,
            ),
            CustomText(
              text: text2,
              color: ColorConstant.grey,
              size: context.fontSize_16,
              fontWeight: FontWeight.bold,
              paddingTop: context.screenHeight * 0.00418,
              paddingright: context.screenWidth * 0.0272,
            ),
          ],
        ),
      ),
    );
  }
}
