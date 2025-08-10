import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/button.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/Features/Widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whitebackground,
        scrolledUnderElevation: 0,
        title: CustomText(
          text: "تغير كلمة المرور",
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
              CustomTextFormField(
                widthFiled: context.screenWidth * 0.8636,
                heightFiled: context.screenHeight * 0.0606,
                radius: 10,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                enabled: true,
                hintText: "كلمة المرور القديمة",
                paddingTop: context.screenHeight * 0.0334,
                color: ColorConstant.greylight,
                textAlign: TextAlign.right,
              ),
              CustomTextFormField(
                widthFiled: context.screenWidth * 0.8636,
                heightFiled: context.screenHeight * 0.0606,
                radius: 10,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                enabled: true,
                hintText: "كلمة المرور الجديدة",
                paddingTop: context.screenHeight * 0.0125,
                color: ColorConstant.greylight,
                textAlign: TextAlign.right,
              ),
              CustomButton(
                widthButton: context.screenWidth * 0.4545,
                heightButton: context.screenHeight * 0.0606,
                colorButton: ColorConstant.mainColor,
                colorText: ColorConstant.white,
                text: "تأكيد",
                sizeText: context.fontSize_20,
                paddingTop: context.screenHeight * 0.0554,
                onTap: () {},
                radius: 50,
                paddingRight: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
