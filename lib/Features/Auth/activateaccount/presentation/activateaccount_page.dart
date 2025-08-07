import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Auth/login/presentation/login_page.dart';
import 'package:board_mobile/Features/Widgets/button.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/Features/Widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class ActivateAccountPage extends StatelessWidget {
  const ActivateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whitebackground,
        scrolledUnderElevation: 0,
        title: CustomText(
          text: "تفعيل الحساب",
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
              Padding(
                padding: EdgeInsets.only(top: context.screenHeight * 0.0669),
                child: CircleAvatar(
                  backgroundColor: ColorConstant.greenlight,
                  radius: context.screenWidth * 0.3409,
                  child: Icon(
                    Icons.mark_email_unread,
                    size: context.screenWidth * 0.3477,
                    color: ColorConstant.mainColor,
                  ),
                ),
              ),
              CustomText(
                text: "الرجاء إدخال الرمز المكون من 4 \nأرقام المرسل إلى",
                color: ColorConstant.black,
                size: context.fontSize_20,
                fontWeight: FontWeight.bold,
                paddingTop: context.screenHeight * 0.025,
                paddingright: 0,
              ),
              CustomText(
                text: "molham.saad.aldien@gmail.com",
                color: ColorConstant.mainColor,
                size: context.fontSize_20,
                fontWeight: FontWeight.bold,
                paddingTop: 0,
                paddingright: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4 * 2 - 1, (index) {
                  if (index.isOdd) {
                    return SizedBox(width: context.screenWidth * 0.068);
                  }
                  final realIndex = index ~/ 2;
                  return CustomTextFormField(
                    widthFiled: context.screenWidth * 0.1136,
                    heightFiled: context.screenHeight * 0.0606,
                    maxLength: 1,
                    radius: 4,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    enabled: true,
                    hintText: "",
                    paddingTop: context.screenHeight * 0.0502,
                    color: ColorConstant.greylight,
                    textAlign: TextAlign.right,
                    fontSizeInput: context.fontSize_24,
                    fontWeightInput: FontWeight.bold,
                    colorTextInput: ColorConstant.mainColor,
                    isverify: true,
                    border: Border(
                      bottom: BorderSide(
                        color: ColorConstant.mainColor,
                        width: 3.0,
                      ),
                    ),
                    onChanged: (value) {
                      if (value.length == 1 && realIndex < 3) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  );
                }),
              ),
              CustomButton(
                widthButton: context.screenWidth * 0.4545,
                heightButton: context.screenHeight * 0.0606,
                colorButton: ColorConstant.mainColor,
                colorText: ColorConstant.white,
                text: "تفعيل",
                sizeText: context.fontSize_20,
                paddingTop: context.screenHeight * 0.1286,
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (Route<dynamic> route) => false,
                  );
                },
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
