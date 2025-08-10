import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/home/notifications_home.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:flutter/material.dart';

class TitelHome extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function() onTapNotifications;
  const TitelHome({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTapNotifications,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: text1,
              color: ColorConstant.mainColor,
              size: context.fontSize_24,
              fontWeight: FontWeight.bold,
              paddingTop: context.screenHeight * 0.0439,
              paddingright: context.screenWidth * 0.0409,
            ),
            CustomText(
              text: text2,
              color: ColorConstant.grey,
              size: context.fontSize_18,
              fontWeight: FontWeight.bold,
              paddingTop: 0,
              paddingright: context.screenWidth * 0.0409,
            ),
          ],
        ),
        NotificationsHome(onTap: onTapNotifications),
      ],
    );
  }
}
