import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
          widthFiled: context.screenWidth * 0.745,
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
        ),
        Padding(
          padding: EdgeInsets.only(
            right: context.screenWidth * 0.0318,
            top: context.screenHeight * 0.0334,
          ),
          child: Container(
            width: context.screenWidth * 0.1409,
            height: context.screenHeight * 0.052,
            decoration: BoxDecoration(
              color: ColorConstant.white,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: ColorConstant.mainColor, width: 1),
            ),
            child: Icon(
              Icons.filter_list,
              size: context.screenWidth * 0.07,
              color: ColorConstant.mainColor,
            ),
          ),
        ),
      ],
    );
  }
}
