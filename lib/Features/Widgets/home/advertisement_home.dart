import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/button.dart';
import 'package:board_mobile/Features/Widgets/logo.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/model/advertisement_model.dart';
import 'package:flutter/material.dart';

class AdvertisementHome extends StatelessWidget {
  final String titel;
  final String date;
  final void Function() onTapReadMore;
  final List<AdvertisementModel> advertisements;

  const AdvertisementHome({
    super.key,
    required this.titel,
    required this.date,
    required this.onTapReadMore,
    required this.advertisements,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: context.screenHeight * 0.23,
      child: Padding(
        padding: EdgeInsets.only(right: context.screenWidth * 0.0409),
        child: ListView.builder(
          itemCount: advertisements.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final ad = advertisements[index];
            return Padding(
              padding: EdgeInsets.only(
                left: context.screenWidth * 0.0409,
                top: context.screenHeight * 0.0188,
              ),
              child: Container(
                width: context.screenWidth * 0.806,
                height: context.screenHeight * 0.23,
                decoration: BoxDecoration(
                  color: ColorConstant.mainColor,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: context.screenWidth * 0.0272,
                      ),
                      child: SizedBox(
                        width: context.screenWidth * 0.44,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: ad.title,
                              color: ColorConstant.white,
                              size: context.fontSize_16,
                              fontWeight: FontWeight.bold,
                              paddingTop: context.screenHeight * 0.025,
                              paddingright: 0,
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.right,
                            ),
                            CustomText(
                              text: ad.date,
                              color: ColorConstant.white,
                              size: context.fontSize_12,
                              fontWeight: FontWeight.bold,
                              paddingTop: context.screenHeight * 0.025,
                              paddingright: 0,
                            ),
                            CustomButton(
                              widthButton: context.screenWidth * 0.227,
                              heightButton: context.screenHeight * 0.0376,
                              colorButton: ColorConstant.white,
                              colorText: ColorConstant.mainColor,
                              text: "اقرأ الأن",
                              sizeText: context.fontSize_12,
                              paddingTop: context.screenHeight * 0.0188,
                              onTap: onTapReadMore,
                              radius: 50,
                              paddingRight: 0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomLogo(
                      widthLogo: context.screenWidth * 0.295,
                      heightLogo: context.screenHeight * 0.1202,
                      paddingTop: context.screenHeight * 0.0188,
                      paddingRight: 0,
                      colorFilter: const ColorFilter.matrix(<double>[
                        0, 0, 0, 0, 255, // Red
                        0, 3, 0, 0, 255, // Green
                        0, 0, 3, 0, 255, // Blue
                        0, 0, 0, 1, 0, // Alpha
                      ]),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
