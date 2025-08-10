import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final void Function() onPressed;
  const Search({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      widthFiled: context.screenWidth * 0.918,
      heightFiled: context.screenHeight * 0.052,
      radius: 8,
      obscureText: false,
      keyboardType: TextInputType.text,
      enabled: true,
      hintText: "ابحث هنا ..",
      paddingTop: context.screenHeight * 0.0334,
      color: ColorConstant.whitebackground,
      textAlign: TextAlign.right,
      border: Border.all(color: ColorConstant.mainColor, width: 1),
      paddingRight: context.screenWidth * 0.0409,
      paddingLeft: context.screenWidth * 0.0409,
      suffixIcon: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.manage_search,
          color: ColorConstant.grey,
          size: context.screenWidth * 0.07,
        ),
      ),
      isverify: true,
    );
  }
}
