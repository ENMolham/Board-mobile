import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
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
  final BoxBorder? border;
  final void Function(String)? onChanged;
  final int? maxLength;
  final double? fontSizeInput;
  final FontWeight? fontWeightInput;
  final bool? isverify;
  final Color? colorTextInput;
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
    required this.color,
    required this.textAlign,
    this.border,
    this.onChanged,
    this.maxLength,
    this.fontSizeInput,
    this.fontWeightInput,
    this.isverify,
    this.colorTextInput,
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
          border: border,
        ),
        child: TextFormField(
          maxLength: maxLength,
          keyboardType: keyboardType,
          textAlignVertical: TextAlignVertical.center,
          textAlign: textAlign,
          obscureText: obscureText,
          style: TextStyle(
            fontWeight: fontWeightInput,
            fontSize: fontSizeInput,
            color: colorTextInput,
          ),
          decoration: InputDecoration(
            counter: const SizedBox.shrink(),
            contentPadding: EdgeInsets.only(
              bottom: (isverify ?? false)
                  ? context.screenHeight * 0.0073
                  : context.screenHeight * 0.0146,
              right: context.screenWidth * 0.04,
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
          onChanged: onChanged,
        ),
      ),
    );
  }
}
