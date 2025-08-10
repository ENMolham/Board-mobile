import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/Features/Widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class CustomColumnApplication extends StatelessWidget {
  final String text;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  const CustomColumnApplication({
    super.key,
    required this.text,
    required this.keyboardType,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          color: ColorConstant.black,
          size: context.fontSize_16,
          fontWeight: FontWeight.bold,
          paddingTop: context.screenHeight * 0.0188,
          paddingright: context.screenWidth * 0.051,
        ),
        CustomTextFormField(
          widthFiled: context.screenWidth * 0.85,
          heightFiled: context.screenHeight * 0.055,
          radius: 8,
          obscureText: false,
          keyboardType: keyboardType,
          enabled: true,
          hintText: "",
          paddingTop: context.screenWidth * 0.0125,
          color: ColorConstant.greylight,
          textAlign: TextAlign.right,
          paddingRight: context.screenWidth * 0.0409,
          border: Border.all(color: ColorConstant.grey, width: 2),
          prefixIcon: prefixIcon,
        ),
      ],
    );
  }
}
