import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/search.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/data/transactions_data.dart';
import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whitebackground,
        scrolledUnderElevation: 0,
        title: CustomText(
          text: "المعاملات",
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
              Search(onPressed: () {}),
              SizedBox(
                width: context.screenWidth,
                height: context.screenHeight * 0.82,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.screenWidth * 0.1386,
                    vertical: context.screenHeight * 0.025,
                  ),
                  child: GridView.builder(
                    itemCount: transactions.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: context.screenWidth * 0.0409,
                      mainAxisSpacing: context.screenHeight * 0.0188,
                      childAspectRatio: context.screenAspectRatio * 2.6082,
                    ),
                    itemBuilder: (context, index) {
                      final tr = transactions[index];
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                            border: Border.all(
                              color: ColorConstant.mainColor,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: context.screenHeight * 0.0188,
                                ),
                                child: Icon(
                                  Icons.file_open,
                                  size: context.screenWidth * 0.1,
                                  color: ColorConstant.mainColor,
                                ),
                              ),
                              CustomText(
                                text: tr.title,
                                color: ColorConstant.mainColor,
                                size: context.fontSize_16,
                                fontWeight: FontWeight.bold,
                                paddingTop: context.screenHeight * 0.002,
                                paddingright: 0,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                            ],
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
