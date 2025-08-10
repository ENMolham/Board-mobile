import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/exams/custom_row.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/model/exams_model.dart';
import 'package:flutter/material.dart';

class CustomListDetailsExam extends StatelessWidget {
  final List<ExamsModel> exams;
  final int indexexam;
  const CustomListDetailsExam({
    super.key,
    required this.exams,
    required this.indexexam,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth * 0.91818,
      height: context.screenHeight * 0.82,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          vertical: context.screenHeight * 0.033,
          horizontal: context.screenWidth * 0.0409,
        ),
        itemCount: exams[indexexam].exam.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: context.screenHeight * 0.0125),
            child: Container(
              width: context.screenWidth * 0.91818,
              height: context.screenHeight * 0.141,
              decoration: BoxDecoration(
                border: Border.all(
                  color: exams[indexexam].exam[index]['status'] == "A"
                      ? ColorConstant.mainColor
                      : exams[indexexam].exam[index]['status'] == "E"
                      ? ColorConstant.red
                      : ColorConstant.white,
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: exams[indexexam].exam[index]['exam'],
                    color: exams[indexexam].exam[index]['status'] == "A"
                        ? ColorConstant.mainColor
                        : exams[indexexam].exam[index]['status'] == "E"
                        ? ColorConstant.red
                        : ColorConstant.white,
                    size: context.fontSize_20,
                    fontWeight: FontWeight.bold,
                    paddingTop: context.screenHeight * 0.0146,
                    paddingright: context.screenWidth * 0.0318,
                    decoration: exams[indexexam].exam[index]['status'] == "A"
                        ? TextDecoration.none
                        : exams[indexexam].exam[index]['status'] == "E"
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                  CustomRow(
                    text: "تاريخ الامتحان :",
                    value: exams[indexexam].exam[index]['day'],
                  ),
                  CustomRow(
                    text: "الساعة :",
                    value: exams[indexexam].exam[index]['time'],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
