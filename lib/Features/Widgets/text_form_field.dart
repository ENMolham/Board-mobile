import 'package:board_desktop/Core/constant/colors_constant.dart';
import 'package:board_desktop/Core/extension/screen_size_extension.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final double widthFiled;
  final double heightFiled;
  final double radius;
  final bool obscureText;
  final TextInputType keyboardType;
  final bool enabled;
  final String hintText;
  final double paddingTop;
  final Widget? prefixIcon;
  final Color color;
  final TextAlign textAlign;
  const CustomTextFormField({
    super.key,
    required this.widthFiled,
    required this.heightFiled,
    required this.radius,
    required this.obscureText,
    required this.keyboardType,
    required this.enabled,
    required this.hintText,
    required this.paddingTop,
    this.prefixIcon,
    required this.color, required this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop),
      child: Container(
        width: widthFiled,
        height: heightFiled,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            border: Border.all(color: ColorConstant.mainColor, width: 1)),
        child: TextFormField(
          keyboardType: keyboardType,
          textAlignVertical: TextAlignVertical.center,
          textAlign: textAlign,
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              bottom: context.screenHeight * 0.025,
              right: context.screenWidth * 0.01,
            ),
            enabled: enabled,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color: ColorConstant.grey,
              fontSize: context.fontSize_16,
            ),
            hintTextDirection: TextDirection.rtl,
            suffixIcon: prefixIcon,
          ),
        ),
      ),
    );
  }
}
