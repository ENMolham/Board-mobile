import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:flutter/material.dart';

class ElemntsHome extends StatelessWidget {
  final int value;
  final int index;
  final void Function() onTap;
  final IconData icon;
  const ElemntsHome({
    super.key,
    required this.value,
    required this.index,
    required this.onTap, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(
        Radius.circular(context.screenWidth * 0.136),
      ),
      onTap: onTap,
      child: CircleAvatar(
        radius: context.screenWidth * 0.068,
        backgroundColor: index == value
            ? ColorConstant.white
            : ColorConstant.mainColor,
        child: Icon(
          icon,
          size: context.screenWidth * 0.05,
          color: index == value ? ColorConstant.mainColor : ColorConstant.white,
        ),
      ),
    );
  }
}
