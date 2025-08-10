import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class ContentOfExamButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const ContentOfExamButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: context.screenWidth * 0.25,
        height: context.screenHeight * 0.1,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border(
            bottom: BorderSide(color: ColorConstant.mainColor, width: 5),
            top: BorderSide(color: ColorConstant.mainColor, width: 1),
            right: BorderSide(color: ColorConstant.mainColor, width: 1),
            left: BorderSide(color: ColorConstant.mainColor, width: 1),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: context.screenHeight * 0.015),
              child: Icon(
                Icons.note_add_rounded,
                color: ColorConstant.mainColor,
                size: context.screenWidth * 0.08,
              ),
            ),
            CustomText(
              text: text,
              color: ColorConstant.mainColor,
              size: context.fontSize_10,
              fontWeight: FontWeight.bold,
              paddingTop: context.screenHeight * 0.005,
              paddingright: 0,
            ),
          ],
        ),
      ),
    );
  }
}
