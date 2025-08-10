import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Auth/activateaccount/presentation/activateaccount_page.dart';
import 'package:board_mobile/Features/Auth/login/cubit/password_visibility_cubit.dart';
import 'package:board_mobile/Features/Auth/login/presentation/login_page.dart';
import 'package:board_mobile/Features/Widgets/button.dart';
import 'package:board_mobile/Features/Widgets/logo.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/Features/Widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.screenWidth,
        height: context.screenHeight,
        color: ColorConstant.mainColor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomLogo(
                widthLogo: context.screenWidth * 0.36,
                heightLogo: context.screenHeight * 0.146,
                paddingTop: context.screenHeight * 0.09,
                paddingRight: 0,
                colorFilter: const ColorFilter.matrix(<double>[
                  0, 0, 0, 0, 255, // Red
                  0, 3, 0, 0, 255, // Green
                  0, 0, 3, 0, 255, // Blue
                  0, 0, 0, 1, 0, // Alpha
                ]),
              ),
              CustomText(
                text: "إنشاء حساب",
                color: ColorConstant.white,
                size: context.fontSize_32,
                fontWeight: FontWeight.bold,
                paddingTop: context.screenHeight * 0.0188,
                paddingright: 0,
              ),
              CustomText(
                text: "قم بإدخال معلوماتك الشخصية لتتمكن من استخدام تطبيقنا",
                color: ColorConstant.white,
                size: context.fontSize_20,
                fontWeight: FontWeight.bold,
                paddingTop: context.screenHeight * 0.0041,
                paddingright: 0,
              ),
              CustomTextFormField(
                widthFiled: context.screenWidth * 0.8636,
                heightFiled: context.screenHeight * 0.0606,
                radius: 10,
                obscureText: false,
                keyboardType: TextInputType.name,
                enabled: true,
                hintText: "اسم المستخدم",
                paddingTop: context.screenHeight * 0.0334,
                color: ColorConstant.white,
                textAlign: TextAlign.right,
                border: Border.all(color: ColorConstant.mainColor, width: 3),
              ),
              CustomTextFormField(
                widthFiled: context.screenWidth * 0.8636,
                heightFiled: context.screenHeight * 0.0606,
                radius: 10,
                obscureText: false,
                keyboardType: TextInputType.phone,
                enabled: true,
                hintText: "رقم الموبايل",
                paddingTop: context.screenHeight * 0.025,
                color: ColorConstant.white,
                textAlign: TextAlign.right,
                border: Border.all(color: ColorConstant.mainColor, width: 3),
              ),
              CustomTextFormField(
                widthFiled: context.screenWidth * 0.8636,
                heightFiled: context.screenHeight * 0.0606,
                radius: 10,
                obscureText: false,
                keyboardType: TextInputType.name,
                enabled: true,
                hintText: "البريد الالكتروني",
                paddingTop: context.screenHeight * 0.025,
                border: Border.all(color: ColorConstant.mainColor, width: 3),
                color: ColorConstant.white,
                textAlign: TextAlign.right,
              ),
              BlocBuilder<PasswordVisibilityCubit, bool>(
                builder: (context, passwordVisible) {
                  return CustomTextFormField(
                    widthFiled: context.screenWidth * 0.8636,
                    heightFiled: context.screenHeight * 0.0606,
                    radius: 10,
                    obscureText: passwordVisible,
                    border: Border.all(
                      color: ColorConstant.mainColor,
                      width: 3,
                    ),
                    keyboardType: TextInputType.name,
                    enabled: true,
                    hintText: "كلمة المرور",
                    paddingTop: context.screenHeight * 0.025,
                    color: ColorConstant.white,
                    textAlign: TextAlign.right,
                    prefixIcon: IconButton(
                      onPressed: () {
                        context.read<PasswordVisibilityCubit>().toggle();
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: ColorConstant.mainColor,
                        size: context.screenWidth * 0.05,
                      ),
                    ),
                  );
                },
              ),
              CustomButton(
                widthButton: context.screenWidth * 0.4545,
                heightButton: context.screenHeight * 0.0606,
                colorButton: ColorConstant.white,
                colorText: ColorConstant.mainColor,
                text: "إنشاء حساب",
                sizeText: context.fontSize_20,
                paddingTop: context.screenHeight * 0.048,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ActivateAccountPage(),
                    ),
                  );
                },
                radius: 50,
                paddingRight: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "لديك حساب ؟",
                    color: ColorConstant.white,
                    size: context.fontSize_16,
                    fontWeight: FontWeight.bold,
                    paddingTop: context.screenHeight * 0.135,
                    paddingright: 0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: CustomText(
                      text: "تسجيل الدخول",
                      color: ColorConstant.greendark,
                      size: context.fontSize_16,
                      fontWeight: FontWeight.bold,
                      paddingTop: context.screenHeight * 0.135,
                      paddingright: context.screenWidth * 0.02,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
