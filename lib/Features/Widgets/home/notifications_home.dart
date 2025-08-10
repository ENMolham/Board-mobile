import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:flutter/material.dart';

class NotificationsHome extends StatelessWidget {
  final void Function() onTap;
  const NotificationsHome({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: context.screenWidth * 0.1,
        right: context.screenWidth * 0.54,
      ),
      child: InkWell(
        borderRadius: BorderRadius.all(
          Radius.circular(context.screenWidth * 0.136),
        ),
        onTap: onTap,
        child: CircleAvatar(
          radius: context.screenWidth * 0.068,
          backgroundColor: ColorConstant.mainColor,
          child: Icon(
            Icons.notifications_on,
            size: context.screenWidth * 0.05,
            color: ColorConstant.white,
          ),
        ),
      ),
    );
  }
}
