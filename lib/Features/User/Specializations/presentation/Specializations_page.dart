import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/home/specializations_home.dart';
import 'package:board_mobile/Features/Widgets/search_filter.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/data/specializations_data.dart';
import 'package:flutter/material.dart';

class SpecializationsPage extends StatelessWidget {
  const SpecializationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whitebackground,
        scrolledUnderElevation: 0,
        title: CustomText(
          text: "الاختصاصات",
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SearchFilter(),
              SpecializationsHome(
                scrollDirection: Axis.vertical,
                specializations: specializations,
                heightListBuilder: context.screenHeight * 0.8,
                interwidth: context.screenWidth * 0.67,
                heightContainer: context.screenHeight * 0.16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
