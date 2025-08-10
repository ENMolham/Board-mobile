import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/exams/custom_row.dart';
import 'package:board_mobile/Features/Widgets/exams/custom_status.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/model/exams_model.dart';
import 'package:flutter/material.dart';

class CustomListContainer extends StatelessWidget {
  final List<ExamsModel> exams;
  final void Function(int index) onTapContainer;
  const CustomListContainer({
    super.key,
    required this.exams,
    required this.onTapContainer,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth * 0.91818,
      height: context.screenHeight * 0.65,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          vertical: context.screenHeight * 0.03,
          horizontal: context.screenWidth * 0.0409,
        ),
        itemCount: exams.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: context.screenHeight * 0.0125),
            child: InkWell(
              onTap: () => onTapContainer(index),
              child: Container(
                width: context.screenWidth * 0.91818,
                height: context.screenHeight * 0.238,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorConstant.mainColor, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: exams[index].name,
                      color: ColorConstant.mainColor,
                      size: context.fontSize_20,
                      fontWeight: FontWeight.bold,
                      paddingTop: context.screenHeight * 0.0146,
                      paddingright: context.screenWidth * 0.0318,
                    ),
                    CustomRow(text: "السنة :", value: exams[index].year),
                    CustomStatus(exams: exams, index: index),
                    CustomRow(
                      text: "تاريخ البدء :",
                      value: exams[index].datestart,
                    ),
                    CustomRow(
                      text: "تاريخ الانتهاء :",
                      value: exams[index].dateend,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
