import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String assetImage;
  final void Function() onTapChangeImage;
  const CustomImage({
    super.key,
    required this.assetImage,
    required this.onTapChangeImage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: context.screenHeight * 0.0334),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: context.screenWidth * 0.295,
              height: context.screenHeight * 0.135,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(assetImage),
                  fit: BoxFit.fill,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(90)),
              ),
            ),
            InkWell(
              onTap: onTapChangeImage,
              child: CircleAvatar(
                radius: context.screenWidth * 0.0363,
                backgroundColor: ColorConstant.mainColor,
                child: Icon(
                  size: context.screenWidth * 0.045,
                  Icons.camera_alt_outlined,
                  color: ColorConstant.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
