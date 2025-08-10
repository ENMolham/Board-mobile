import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final List<Widget> children;
  final double widthContainer;
  final double heighContainer;
  const CustomContainer({
    super.key,
    required this.children,
    required this.widthContainer,
    required this.heighContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: context.screenWidth * 0.0409,
        top: context.screenHeight * 0.008,
      ),
      child: Container(
        width: widthContainer,
        height: heighContainer,
        decoration: BoxDecoration(
          color: ColorConstant.greylight,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
