import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/User/Application_outside_country/Data/mediciens.dart';
import 'package:board_mobile/Features/Widgets/button.dart';
import 'package:board_mobile/Features/Widgets/exams/custom_column_application.dart';
import 'package:board_mobile/Features/Widgets/exams/custom_icon_button.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class ApplicationInsideCountryPage extends StatelessWidget {
  const ApplicationInsideCountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whitebackground,
        scrolledUnderElevation: 0,
        title: CustomText(
          text: "طلب ترشح للامتحان ( داخل القطر )",
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
                text: "مسجل في سجل",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              const CustomColumnApplication(
                text: "برقم",
                keyboardType: TextInputType.number,
              ),
              const CustomColumnApplication(
                text: "بتاريخ",
                keyboardType: TextInputType.text,
              ),
              CustomColumnApplication(
                text: "حاصل على ترخيص",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              const CustomColumnApplication(
                text: "برقم",
                keyboardType: TextInputType.number,
              ),
              const CustomColumnApplication(
                text: "بتاريخ",
                keyboardType: TextInputType.text,
              ),
              const CustomColumnApplication(
                text: "بصفة",
                keyboardType: TextInputType.text,
              ),
              const CustomColumnApplication(
                text: "لدى وزارة التعليم العالي - جامعة",
                keyboardType: TextInputType.text,
              ),
              CustomText(
                text: "- يرجى الموافقة على دخولي الاختبار النهائي",
                color: ColorConstant.mainColor,
                size: context.fontSize_18,
                fontWeight: FontWeight.bold,
                paddingTop: context.screenHeight * 0.05,
                paddingright: context.screenWidth * 0.0409,
              ),
              CustomColumnApplication(
                text: "لاختصاص",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              CustomColumnApplication(
                text: "نوع الاختصاص",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              CustomColumnApplication(
                text: "مسبوق باختصاص رئيسي هو",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              CustomColumnApplication(
                text: "لدورة شهر",
                keyboardType: TextInputType.text,
                prefixIcon: CustomIconButton(items: medicens),
              ),
              const CustomColumnApplication(
                text: "سنة",
                keyboardType: TextInputType.datetime,
              ),
              CustomText(
                text: "المرفقات",
                color: ColorConstant.mainColor,
                size: context.fontSize_18,
                fontWeight: FontWeight.bold,
                paddingTop: context.screenHeight * 0.05,
                paddingright: context.screenWidth * 0.0409,
              ),
              CustomColumnApplication(
                text: "صورة شخصية",
                keyboardType: TextInputType.text,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_photo_alternate,
                    size: context.screenWidth * 0.06,
                    color: ColorConstant.grey,
                  ),
                ),
              ),
              CustomColumnApplication(
                text: "صورة عن الهوية الشخصية",
                keyboardType: TextInputType.text,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_photo_alternate,
                    size: context.screenWidth * 0.06,
                    color: ColorConstant.grey,
                  ),
                ),
              ),
              CustomColumnApplication(
                text: "صورة بيان خدمة",
                keyboardType: TextInputType.text,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_photo_alternate,
                    size: context.screenWidth * 0.06,
                    color: ColorConstant.grey,
                  ),
                ),
              ),
              CustomColumnApplication(
                text: "كشف علامات الأصلي",
                keyboardType: TextInputType.text,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_photo_alternate,
                    size: context.screenWidth * 0.06,
                    color: ColorConstant.grey,
                  ),
                ),
              ),
              CustomColumnApplication(
                text: "موافقة عميد الكلية على الترشح",
                keyboardType: TextInputType.text,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_photo_alternate,
                    size: context.screenWidth * 0.06,
                    color: ColorConstant.grey,
                  ),
                ),
              ),
              CustomColumnApplication(
                text: "بيان بالإجازات بدون أجر",
                keyboardType: TextInputType.text,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_photo_alternate,
                    size: context.screenWidth * 0.06,
                    color: ColorConstant.grey,
                  ),
                ),
              ),
              CustomColumnApplication(
                text: "صورة  للترخيص المؤقت",
                keyboardType: TextInputType.text,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_photo_alternate,
                    size: context.screenWidth * 0.06,
                    color: ColorConstant.grey,
                  ),
                ),
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
