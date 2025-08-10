import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/logo.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class AdvertisemenContentPage extends StatelessWidget {
  const AdvertisemenContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whitebackground,
        scrolledUnderElevation: 0,
        title: CustomText(
          text: "محتوى الاعلان",
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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.15,
              child: CustomLogo(
                widthLogo: context.screenWidth * 0.9,
                heightLogo: context.screenHeight * 0.5,
                paddingTop: 0,
                paddingRight: 0,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "صدور نتائج المفاضلة لعام 2025",
                    color: ColorConstant.mainColor,
                    size: context.fontSize_22,
                    fontWeight: FontWeight.bold,
                    paddingTop: context.screenHeight * 0.0334,
                    paddingright: context.screenWidth * 0.0409,
                  ),
                  CustomText(
                    text:
                        "تُعلن الهيئة السورية للاختصاصات الطبية عن فتح باب المفاضلة العامة للقبول في برامج التدريب الطبي الاختصاصي للعام 2025، وذلك اعتبارًا من يوم [20-7-2025] ولغاية [20-8-2025].يدعى الأطباء الراغبون بالالتحاق بأحد برامج الاختصاص الطبي المُعتمدة لدى الهيئة إلى التقدّم بطلباتهم ضمن المدة المحددة، وفق الشروط والمعايير المنصوص عليها في دليل المفاضلة.يشمل إعلان المفاضلة:الشروط العامة والخاصة للقبولالبرامج والتخصصات الطبية المتاحةآلية التقديم والوثائق المطلوبةالمراكز التدريبية المعتمدةمعايير المفاضلة وترتيب الرغبات📌 مكان التقديم: حصريًا عبر المنصة الإلكترونية للهيئة السورية للاختصاصات الطبية أو من خلال الديوان المركزي في مقر الهيئة.  📅 آخر موعد للتقديم: يوم [تاريخ الانتهاء بالضبط] الساعة 2:00 ظهرًا.",
                    color: ColorConstant.black,
                    size: context.fontSize_18,
                    fontWeight: FontWeight.w400,
                    paddingTop: context.screenHeight * 0.0334,
                    paddingright: context.screenWidth * 0.0409,
                    paddingLeft: context.screenWidth * 0.0409,
                    textAlign: TextAlign.right,
                    spaceLines: context.screenHeight * 0.0025,
                  ),
                  CustomText(
                    text: "17-7-2025",
                    color: ColorConstant.mainColor,
                    size: context.fontSize_16,
                    fontWeight: FontWeight.bold,
                    paddingTop: context.screenHeight * 0.0334,
                    paddingright: context.screenWidth * 0.76,
                    paddingBottum: context.screenHeight * 0.0334,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
