import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/User/Application_outside_country/Data/mediciens.dart';
import 'package:board_mobile/Features/Widgets/button.dart';
import 'package:board_mobile/Features/Widgets/exams/custom_column_application.dart';
import 'package:board_mobile/Features/Widgets/exams/custom_icon_button.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class RequestForApologyForExamPage extends StatelessWidget {
  const RequestForApologyForExamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whitebackground,
        scrolledUnderElevation: 0,
        title: CustomText(
          text: "طلب اعتذار عن امتحان",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "- البيانات الشخصية",
                color: ColorConstant.mainColor,
                size: context.fontSize_18,
                fontWeight: FontWeight.bold,
                paddingTop: context.screenHeight * 0.0188,
                paddingright: context.screenWidth * 0.0409,
              ),
              const CustomColumnApplication(
                text: "الاسم الأول",
                keyboardType: TextInputType.text,
              ),
              const CustomColumnApplication(
                text: "اسم الأب",
                keyboardType: TextInputType.text,
              ),
              const CustomColumnApplication(
                text: "اسم العائلة",
                keyboardType: TextInputType.text,
              ),
              const CustomColumnApplication(
                text: "الرقم الوطني",
                keyboardType: TextInputType.number,
              ),
              const CustomColumnApplication(
                text: "الجنسية",
                keyboardType: TextInputType.text,
              ),
              const CustomColumnApplication(
                text: "مكان وتاريخ الولادة",
                keyboardType: TextInputType.text,
              ),
              const CustomColumnApplication(
                text: "رقم الجوال",
                keyboardType: TextInputType.phone,
              ),
              const CustomColumnApplication(
                text: "رقم الهاتف الأرضي",
                keyboardType: TextInputType.phone,
              ),
              const CustomColumnApplication(
                text: "عنوان السكن المعتمد",
                keyboardType: TextInputType.text,
              ),
              CustomText(
                text: "- البيانات الأكاديمية",
                color: ColorConstant.mainColor,
                size: context.fontSize_18,
                fontWeight: FontWeight.bold,
                paddingTop: context.screenHeight * 0.05,
                paddingright: context.screenWidth * 0.0409,
              ),
              const CustomColumnApplication(
                text: "خريج جامعة",
                keyboardType: TextInputType.text,
              ),
              CustomColumnApplication(
                text: "الإختصاص",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              const CustomColumnApplication(
                text: "مكان التدريب الإختصاص",
                keyboardType: TextInputType.text,
              ),
              CustomColumnApplication(
                text: "خارج القطر",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              const CustomColumnApplication(
                text: "الدولة",
                keyboardType: TextInputType.text,
              ),
              CustomText(
                text: "أرجو قبول اعتذاري عن دخول",
                color: ColorConstant.mainColor,
                size: context.fontSize_18,
                fontWeight: FontWeight.bold,
                paddingTop: context.screenHeight * 0.05,
                paddingright: context.screenWidth * 0.0409,
              ),
              CustomColumnApplication(
                text: "الاختبار",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              CustomColumnApplication(
                text: "دورة",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              const CustomColumnApplication(
                text: "سنة",
                keyboardType: TextInputType.text,
              ),
              CustomColumnApplication(
                text: "هل يوجد اعتذارات سابقة؟",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              CustomColumnApplication(
                text: "عن الاختبار",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              CustomColumnApplication(
                text: "دورة",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              const CustomColumnApplication(
                text: "سنة",
                keyboardType: TextInputType.text,
              ),
              Center(
                child: CustomButton(
                  widthButton: context.screenWidth * 0.3,
                  heightButton: context.screenHeight * 0.05,
                  colorButton: ColorConstant.mainColor,
                  colorText: ColorConstant.white,
                  text: "ارسال",
                  sizeText: context.fontSize_16,
                  paddingTop: context.screenHeight * 0.05,
                  onTap: () {},
                  radius: 8,
                  paddingRight: 0,
                ),
              ),
              SizedBox(height: context.screenHeight * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
