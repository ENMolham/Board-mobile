import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String message;
  final String textbutton1;
  final String textbutton2;
  final void Function() onPressed1;
  final void Function() onPressed2;

  const CustomDialog({
    super.key,
    required this.title,
    required this.message,
    required this.textbutton1,
    required this.textbutton2,
    required this.onPressed1,
    required this.onPressed2,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: SizedBox(
        width: context.screenWidth * 0.3,
        height: context.screenHeight * 0.2,
        child: Padding(
          padding: EdgeInsets.only(top: context.screenHeight * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: CustomText(
                  text: title,
                  color: ColorConstant.red,
                  size: context.fontSize_24,
                  fontWeight: FontWeight.bold,
                  paddingTop: 0,
                  paddingright: 0,
                ),
              ),
              CustomText(
                text: message,
                color: ColorConstant.black,
                size: context.fontSize_16,
                fontWeight: FontWeight.w400,
                paddingTop: context.screenHeight * 0.01,
                paddingright: 0,
              ),
              Padding(
                padding: EdgeInsets.only(top: context.screenHeight * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.mainColor,
                      ),
                      onPressed: onPressed1,
                      child: CustomText(
                        text: textbutton1,
                        color: ColorConstant.white,
                        size: context.fontSize_18,
                        fontWeight: FontWeight.normal,
                        paddingTop: 0,
                        paddingright: 0,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: onPressed2,
                      child: CustomText(
                        text: textbutton2,
                        color: ColorConstant.white,
                        size: context.fontSize_18,
                        fontWeight: FontWeight.normal,
                        paddingTop: 0,
                        paddingright: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
