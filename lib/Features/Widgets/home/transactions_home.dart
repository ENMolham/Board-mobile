import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/model/transactions_model.dart';
import 'package:flutter/material.dart';

class TransactionsHome extends StatelessWidget {
  final String titel;
  final void Function() onTap;
  final List<TransactionsModel> transactions;
  const TransactionsHome({
    super.key,
    required this.titel,
    required this.onTap,
    required this.transactions,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: context.screenHeight * 0.15,
      child: Padding(
        padding: EdgeInsets.only(right: context.screenWidth * 0.0409),
        child: ListView.builder(
          itemCount: transactions.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final tr = transactions[index];
            return Padding(
              padding: EdgeInsets.only(
                left: context.screenWidth * 0.0409,
                top: context.screenHeight * 0.0188,
              ),
              child: InkWell(
                onTap: onTap,
                child: Container(
                  width: context.screenWidth * 0.3409,
                  height: context.screenHeight * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
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
              ),
            );
          },
        ),
      ),
    );
  }
}
