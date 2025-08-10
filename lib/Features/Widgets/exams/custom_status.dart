import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/model/exams_model.dart';
import 'package:flutter/material.dart';

class CustomStatus extends StatelessWidget {
  final List<ExamsModel> exams;
  final int index;
  const CustomStatus({super.key, required this.exams, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: context.screenWidth * 0.0318,
        top: context.screenHeight * 0.0146,
      ),
      child: Container(
        width: context.screenWidth * 0.1704,
        height: context.screenHeight * 0.0376,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: exams[index].status == "A"
              ? ColorConstant.mainColor
              : exams[index].status == "E"
              ? ColorConstant.red
              : exams[index].status == "W"
              ? ColorConstant.amber
              : ColorConstant.white,
        ),
        child: Center(
          child: CustomText(
            text: exams[index].status == "A"
                ? "فعال"
                : exams[index].status == "E"
                ? "انتهى"
                : exams[index].status == "W"
                ? "انتظار"
                : "",
            color: ColorConstant.white,
            size: context.fontSize_14,
            fontWeight: FontWeight.bold,
            paddingTop: 0,
            paddingright: 0,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
