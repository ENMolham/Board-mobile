import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/exams/content_of_exam_button.dart';
import 'package:flutter/material.dart';

class ExamApplicationsHome extends StatelessWidget {
  final void Function() onTapRight;
  final void Function() onTapCenter;
  final void Function() onTapLeft;
  const ExamApplicationsHome({
    super.key,
    required this.onTapRight,
    required this.onTapCenter,
    required this.onTapLeft,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: Padding(
        padding: EdgeInsets.only(
          top: context.screenHeight * 0.03,
          right: context.screenWidth * 0.08,
          left: context.screenWidth * 0.08,
          bottom: context.screenHeight * 0.02,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContentOfExamButton(
              text: "طلب ترشح للامتحان (خارج القطر)",
              onTap: onTapRight,
            ),
            ContentOfExamButton(
              text: "طلب ترشح للامتحان (داخل القطر)",
              onTap: onTapCenter,
            ),
            ContentOfExamButton(
              text: "طلب اعتذار عن \nامتحان",
              onTap: onTapLeft,
            ),
          ],
        ),
      ),
    );
  }
}
