import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/data/transactions_data.dart';
import 'package:flutter/material.dart';

class Steps extends StatelessWidget {
  final int index;
  const Steps({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.screenHeight * 0.0334),
      child: SizedBox(
        width: context.screenWidth * 0.9182,
        height: context.screenHeight * 0.07,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: transactions[index].road.length,
          itemBuilder: (context, roadIndex) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: context.screenWidth * 0.03409,
                      backgroundColor: ColorConstant.grey,
                      child: CustomText(
                        text: "${roadIndex + 1}",
                        color: ColorConstant.white,
                        size: context.fontSize_18,
                        fontWeight: FontWeight.bold,
                        paddingTop: 0,
                        paddingright: 0,
                      ),
                    ),
                    roadIndex == transactions[index].road.length - 1
                        ? const SizedBox(width: 0, height: 0)
                        : Container(
                            width: context.screenWidth * 0.15,
                            height: context.screenHeight * 0.005,
                            color: ColorConstant.grey,
                          ),
                  ],
                ),
                CustomText(
                  text: "${transactions[index].road[roadIndex]}",
                  color: ColorConstant.grey,
                  size: context.fontSize_10,
                  fontWeight: FontWeight.bold,
                  paddingTop: context.screenHeight * 0.0041,
                  paddingright: 0,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
