import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/User/Application_inside_country/presentation/application_inside_country_page.dart';
import 'package:board_mobile/Features/User/Application_outside_country/presentation/application_outside_country_page.dart';
import 'package:board_mobile/Features/User/Request_for_apology_for_exam/presentation/request_for_apology_for_exam_page.dart';
import 'package:board_mobile/Features/User/exam_detailes/presentation/exam_details_page.dart';
import 'package:board_mobile/Features/Widgets/exams/custom_list_container.dart';
import 'package:board_mobile/Features/Widgets/exams/exam_applications_exam.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/data/exams_data.dart';
import 'package:flutter/material.dart';

class ExamsPage extends StatelessWidget {
  const ExamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whitebackground,
        scrolledUnderElevation: 0,
        title: CustomText(
          text: "الامتحانات",
          color: ColorConstant.black,
          size: context.fontSize_24,
          fontWeight: FontWeight.w500,
          paddingTop: 0,
          paddingright: 0,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: context.screenWidth,
        height: context.screenHeight,
        color: ColorConstant.whitebackground,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ExamApplicationsHome(
                onTapRight: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const ApplicationOutsideCountryPage(),
                    ),
                  );
                },
                onTapCenter: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const ApplicationInsideCountryPage(),
                    ),
                  );
                },
                onTapLeft: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const RequestForApologyForExamPage(),
                    ),
                  );
                },
              ),
              CustomListContainer(
                exams: exams,
                onTapContainer: (index) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExamDetailsPage(index: index),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
