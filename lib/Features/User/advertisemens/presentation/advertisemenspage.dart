import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/User/AdvertisemenContent/presentation/advertisemen_content_page.dart';
import 'package:board_mobile/Features/Widgets/search_filter.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/data/advertisement_data.dart';
import 'package:flutter/material.dart';

class Advertisemenspage extends StatelessWidget {
  const Advertisemenspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whitebackground,
        scrolledUnderElevation: 0,
        title: CustomText(
          text: "الإعلانات",
          color: ColorConstant.black,
          size: context.fontSize_24,
          fontWeight: FontWeight.w500,
          paddingTop: 0,
          paddingright: 0,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: context.screenWidth,
        height: context.screenHeight,
        color: ColorConstant.whitebackground,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchFilter(),
              SizedBox(
                width: context.screenWidth,
                height: context.screenHeight * 0.7,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: context.screenWidth * 0.0409,
                    top: context.screenHeight * 0.025,
                  ),
                  child: ListView.builder(
                    itemCount: advertisements.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      final ad = advertisements[index];
                      return Padding(
                        padding: EdgeInsets.only(
                          left: context.screenWidth * 0.0409,
                          top: context.screenHeight * 0.0083,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const AdvertisemenContentPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: context.screenHeight * 0.092,
                            decoration: BoxDecoration(
                              color: ColorConstant.mainColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: context.screenWidth * 0.6,
                                  child: CustomText(
                                    text: ad.title,
                                    color: ColorConstant.white,
                                    size: context.fontSize_16,
                                    fontWeight: FontWeight.bold,
                                    paddingTop: 0,
                                    paddingright: context.screenWidth * 0.0318,
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                CustomText(
                                  text: ad.date,
                                  color: ColorConstant.white,
                                  size: context.fontSize_12,
                                  fontWeight: FontWeight.bold,
                                  paddingTop: 0,
                                  paddingright: context.screenWidth * 0.15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
