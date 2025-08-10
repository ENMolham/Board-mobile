import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/constant/image_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Auth/login/presentation/login_page.dart';
import 'package:board_mobile/Features/Auth/signup/presentation/signup_page.dart';
import 'package:board_mobile/Features/User/changePassword/presentation/change_password_page.dart';
import 'package:board_mobile/Features/Widgets/dialog.dart';
import 'package:board_mobile/Features/Widgets/profile/custom_container.dart';
import 'package:board_mobile/Features/Widgets/profile/custom_image.dart';
import 'package:board_mobile/Features/Widgets/profile/custom_row_pressed.dart';
import 'package:board_mobile/Features/Widgets/profile/custom_row_text.dart';
import 'package:board_mobile/Features/Widgets/profile/custom_row_url.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whitebackground,
        scrolledUnderElevation: 0,
        title: CustomText(
          text: "الملف الشخصي",
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
        height: context.screenHeight * 0.81,
        color: ColorConstant.whitebackground,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImage(
                assetImage: ImageConstant.person,
                onTapChangeImage: () {},
              ),
              Center(
                child: CustomText(
                  text: "محمد ملهم الزقيمي",
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.black,
                  size: context.fontSize_16,
                  paddingTop: context.screenHeight * 0.0125,
                  paddingright: 0,
                ),
              ),
              CustomText(
                text: "الإعدادات الرئيسية",
                fontWeight: FontWeight.bold,
                color: ColorConstant.black,
                size: context.fontSize_14,
                paddingTop: context.screenHeight * 0.0334,
                paddingright: context.screenWidth * 0.0636,
              ),
              CustomContainer(
                widthContainer: context.screenWidth * 0.91818,
                heighContainer: context.screenHeight * 0.1004,
                children: [
                  CustomRowPressed(
                    text: "تسجيل الخروج",
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => CustomDialog(
                          title: "تسجيل الخروج",
                          message: 'هل أنت متأكد من أنك تريد تسجيل الخروج',
                          textbutton1: "تأكيد",
                          textbutton2: "رجوع",
                          onPressed1: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                              (route) => false,
                            );
                          },
                          onPressed2: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      );
                    },
                    iconRight: Icons.logout,
                    colorIconRight: ColorConstant.mainColor,
                    iconLeft: Icons.arrow_forward_ios,
                    paddingIconRight: context.screenWidth * 0.5,
                  ),
                  CustomRowPressed(
                    text: "حذف حساب",
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => CustomDialog(
                          title: "حذف الحساب",
                          message: "هل انت متأكد من أنك تريد حذف الحساب",
                          textbutton1: "تأكيد",
                          textbutton2: "رجوع",
                          onPressed1: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ),
                              (route) => false,
                            );
                          },
                          onPressed2: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      );
                    },
                    iconRight: Icons.delete_rounded,
                    colorIconRight: ColorConstant.red,
                    iconLeft: Icons.arrow_forward_ios,
                    paddingIconRight: context.screenWidth * 0.536,
                  ),
                ],
              ),
              CustomText(
                text: "الخصوصية & التعديل",
                fontWeight: FontWeight.bold,
                color: ColorConstant.black,
                size: context.fontSize_14,
                paddingTop: context.screenHeight * 0.0188,
                paddingright: context.screenWidth * 0.0636,
              ),
              CustomContainer(
                widthContainer: context.screenWidth * 0.91818,
                heighContainer: context.screenHeight * 0.1407,
                children: [
                  CustomRowText(
                    text: "البريد الالكتروني",
                    value: "molham.saad.aldien@gmail.com",
                    iconRight: Icons.email,
                    colorIconRight: ColorConstant.mainColor,
                    paddingValueRight: context.screenWidth * 0.065,
                  ),
                  CustomRowText(
                    text: "رقم الموبايل",
                    value: "+963935650123",
                    iconRight: Icons.phone,
                    colorIconRight: ColorConstant.mainColor,
                    paddingValueRight: context.screenWidth * 0.115,
                  ),
                  CustomRowPressed(
                    text: "تغير كلمة المرور",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChangePasswordPage(),
                        ),
                      );
                    },
                    iconRight: Icons.lock,
                    colorIconRight: ColorConstant.mainColor,
                    iconLeft: Icons.arrow_forward_ios,
                    paddingIconRight: context.screenWidth * 0.46,
                  ),
                ],
              ),
              CustomText(
                text: "الدعم & الاتصال",
                fontWeight: FontWeight.bold,
                color: ColorConstant.black,
                size: context.fontSize_14,
                paddingTop: context.screenHeight * 0.0188,
                paddingright: context.screenWidth * 0.0636,
              ),
              CustomContainer(
                widthContainer: context.screenWidth * 0.91818,
                heighContainer: context.screenHeight * 0.2244,
                children: [
                  CustomRowUrl(
                    text: "البريد الالكتروني",
                    value: "Support@account.com",
                    iconRight: Icons.alternate_email,
                    colorIconRight: ColorConstant.mainColor,
                    paddingValueRight: context.screenWidth * 0.065,
                    uri: 'https://www.facebook.com/syrianboard',
                  ),
                  CustomRowUrl(
                    text: "الخط الساخن",
                    value: "+963 011 1769",
                    iconRight: Icons.headset_mic,
                    colorIconRight: ColorConstant.mainColor,
                    paddingValueRight: context.screenWidth * 0.115,
                    uri: 'https://www.facebook.com/syrianboard',
                  ),
                  CustomRowUrl(
                    text: "تيليغرام",
                    value: "@البورد السوري",
                    iconRight: Icons.telegram,
                    colorIconRight: ColorConstant.mainColor,
                    paddingValueRight: context.screenWidth * 0.177,
                    uri: 'https://www.facebook.com/syrianboard',
                  ),
                  CustomRowUrl(
                    text: "واتساب",
                    value: "+963935650123",
                    iconRight: Icons.phone_android,
                    colorIconRight: ColorConstant.mainColor,
                    paddingValueRight: context.screenWidth * 0.185,
                    uri: 'https://www.facebook.com/syrianboard',
                  ),
                  CustomRowUrl(
                    text: "فيسبوك",
                    value: "البورد السوري",
                    iconRight: Icons.facebook,
                    colorIconRight: ColorConstant.mainColor,
                    paddingValueRight: context.screenWidth * 0.175,
                    uri: 'https://www.facebook.com/syrianboard',
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
