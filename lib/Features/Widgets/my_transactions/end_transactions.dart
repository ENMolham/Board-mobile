import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/User/MyTransactionsDetailes/presentation/My_Transactions_Detailes_page.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/model/transactions_model.dart';
import 'package:flutter/material.dart';

class EndTransactions extends StatelessWidget {
  final List<TransactionsModel> transactions;
  const EndTransactions({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(
        vertical: context.screenHeight * 0.04,
        horizontal: context.screenWidth * 0.0409,
      ),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final tr = transactions[index];
        return Padding(
          padding: EdgeInsets.only(bottom: context.screenHeight * 0.0125),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      MyTransactionsDetailesPage(index: index),
                ),
              );
            },
            child: Container(
              width: context.screenWidth * 0.918,
              height: context.screenHeight * 0.069,
              decoration: BoxDecoration(
                color: ColorConstant.greenlight,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: context.screenWidth * 0.659,
                    child: CustomText(
                      text: tr.title,
                      color: ColorConstant.mainColor,
                      size: context.fontSize_16,
                      fontWeight: FontWeight.bold,
                      paddingTop: 0,
                      paddingright: context.screenWidth * 0.0146,
                      textAlign: TextAlign.right,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: context.screenWidth * 0.259,
                    child: CustomText(
                      text: "17-7-2025",
                      color: ColorConstant.grey,
                      size: context.fontSize_12,
                      fontWeight: FontWeight.bold,
                      paddingTop: 0,
                      paddingright: context.screenWidth * 0.0146,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
