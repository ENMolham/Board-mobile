import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class SubmitTransactionPage extends StatelessWidget {
  const SubmitTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whitebackground,
        scrolledUnderElevation: 0,
        title: CustomText(
          text: "نسيت كلمة المرور",
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
        child: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text("exammmmmmm")],
          ),
        ),
      ),
    );
  }
}
