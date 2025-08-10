import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/model/specializations_model.dart';
import 'package:flutter/material.dart';

class SpecializationsHome extends StatelessWidget {
  final List<SpecializationsModel> specializations;
  final Axis scrollDirection;
  final double heightListBuilder;
  final double heightContainer;
  final double interwidth;
  const SpecializationsHome({
    super.key,
    required this.specializations,
    required this.scrollDirection,
    required this.heightListBuilder,
    required this.interwidth, required this.heightContainer,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: heightListBuilder,
      child: Padding(
        padding: EdgeInsets.only(right: context.screenWidth * 0.0409),
        child: ListView.builder(
          itemCount: specializations.length,
          scrollDirection: scrollDirection,
          itemBuilder: (context, index) {
            final sp = specializations[index];
            return Padding(
              padding: EdgeInsets.only(
                left: context.screenWidth * 0.0409,
                top: context.screenHeight * 0.0188,
              ),
              child: Container(
                width: context.screenWidth * 0.806,
                height: heightContainer,
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
                        width: interwidth,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: sp.name,
                              color: ColorConstant.white,
                              size: context.fontSize_14,
                              fontWeight: FontWeight.bold,
                              paddingTop: context.screenHeight * 0.0167,
                              paddingright: 0,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                            ),
                            CustomText(
                              text: sp.type,
                              color: ColorConstant.white,
                              size: context.fontSize_14,
                              fontWeight: FontWeight.bold,
                              paddingTop: context.screenHeight * 0.0083,
                              paddingright: 0,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: sp.description.map((spde) {
                                return CustomText(
                                  text: spde,
                                  color: ColorConstant.white,
                                  size: context.fontSize_14,
                                  fontWeight: FontWeight.bold,
                                  paddingTop: context.screenHeight * 0.0083,
                                  paddingright: 0,
                                  softWrap: true,
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.right,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.menu_book,
                      size: context.screenWidth * 0.19,
                      color: ColorConstant.greylight,
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
