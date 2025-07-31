import 'package:board_desktop/Core/constant/colors_constant.dart';
import 'package:board_desktop/Core/constant/image_constant.dart';
import 'package:board_desktop/Core/extension/screen_size_extension.dart';
import 'package:board_desktop/Features/Widgets/button.dart';
import 'package:board_desktop/Features/Widgets/logo.dart';
import 'package:board_desktop/Features/Widgets/text.dart';
import 'package:board_desktop/Features/Widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.screenWidth,
        height: context.screenHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: context.screenWidth * 0.32,
              height: context.screenHeight,
              color: ColorConstant.mainColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomLogo(
                    widthLogo: context.screenWidth * 0.09,
                    heightLogo: context.screenHeight * 0.15,
                    colorFilter: const ColorFilter.matrix(<double>[
                      0, 0, 0, 0, 255, // Red
                      0, 3, 0, 0, 255, // Green
                      0, 0, 3, 0, 255, // Blue
                      0, 0, 0, 1, 0, // Alpha
                    ]),
                    paddingTop: context.screenHeight * 0.1,
                    paddingRight: 0,
                  ),
                  CustomText(
                    text: "تسجيل الدخول",
                    color: ColorConstant.white,
                    size: context.fontSize_48,
                    fontWeight: FontWeight.bold,
                    paddingTop: context.screenHeight * 0.02,
                    paddingright: 0,
                  ),
                  CustomText(
                    text: "امتحانات البورد السوري",
                    color: ColorConstant.white,
                    size: context.fontSize_24,
                    fontWeight: FontWeight.bold,
                    paddingTop: context.screenHeight * 0.0074,
                    paddingright: 0,
                  ),
                  CustomTextFormField(
                    widthFiled: context.screenWidth * 0.24,
                    heightFiled: context.screenHeight * 0.059,
                    radius: 8,
                    obscureText: false,
                    keyboardType: TextInputType.name,
                    textAlign: TextAlign.right,
                    enabled: true,
                    hintText: "اسم المستخدم",
                    paddingTop: context.screenHeight * 0.06,
                    color: ColorConstant.white,
                  ),
                  CustomTextFormField(
                    widthFiled: context.screenWidth * 0.24,
                    heightFiled: context.screenHeight * 0.059,
                    radius: 8,
                    obscureText: passwordVisible,
                    keyboardType: TextInputType.name,
                    enabled: true,
                    color: ColorConstant.white,
                    hintText: "كلمة المرور",
                    paddingTop: context.screenHeight * 0.038,
                    prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: ColorConstant.mainColor,
                        size: context.screenWidth * 0.013,
                      ),
                    ),
                    textAlign: TextAlign.right,
                  ),
                  CustomButton(
                    widthButton: context.screenWidth * 0.13,
                    heightButton: context.screenHeight * 0.059,
                    colorButton: ColorConstant.white,
                    colorText: ColorConstant.mainColor,
                    text: "تسجيل الدخول",
                    sizeText: context.fontSize_24,
                    paddingTop: context.screenHeight * 0.12,
                    radius: 50,
                    paddingRight: 0,
                    onTap: () {
                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const HomePage()),
                      //   (route) => false,
                      // );
                    },
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: context.screenWidth * 0.68,
                  height: context.screenHeight,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(ImageConstant.login),
                    fit: BoxFit.fill,
                  )),
                ),
                Container(
                  width: context.screenWidth * 0.18,
                  height: context.screenHeight,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color.fromARGB(128, 14, 74, 35),
                        Color.fromARGB(0, 255, 255, 255),
                      ],
                      tileMode: TileMode.clamp,
                      stops: [0.11, 0.89],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
