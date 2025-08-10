import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/button.dart';
import 'package:board_mobile/Features/Widgets/my_transactions/container_details_my_transaction.dart';
import 'package:board_mobile/Features/Widgets/my_transactions/steps.dart';
import 'package:board_mobile/Features/Widgets/text.dart';
import 'package:board_mobile/trash/data/transactions_data.dart';
import 'package:flutter/material.dart';

class MyTransactionsDetailesPage extends StatelessWidget {
  final int index;
  const MyTransactionsDetailesPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.whitebackground,
        scrolledUnderElevation: 0,
        title: CustomText(
          text: transactions[index].title,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Steps(index: index),
              ContainerDetailsMyTransaction(
                text1: "اسم الطبيب :",
                text2: transactions[index].namedoctor,
              ),
              ContainerDetailsMyTransaction(
                text1: "تاريخ التقديم :",
                text2: transactions[index].datetr,
              ),
              ContainerDetailsMyTransaction(
                text1: "حالة المعاملة :",
                text2: transactions[index].status,
              ),
              ContainerDetailsMyTransaction(
                text1: "حالة الدفع :",
                text2: transactions[index].statuspayment,
              ),
              ContainerDetailsMyTransaction(
                text1: "رقم ايصال الدفع :",
                text2: transactions[index].idpay,
              ),
              ContainerDetailsMyTransaction(
                text1: "الرسوم :",
                text2: "${transactions[index].cost} ل.س",
              ),
              const ContainerDetailsMyTransaction(
                text1: "تاريخ الانتهاء :",
                text2: "--/--/----",
              ),
              CustomButton(
                widthButton: context.screenWidth * 0.625,
                heightButton: context.screenHeight * 0.083,
                colorButton: ColorConstant.mainColor,
                colorText: ColorConstant.white,
                text: "رفع صورة الايصال",
                sizeText: context.fontSize_18,
                paddingTop: context.screenHeight * 0.0188,
                onTap: () {},
                radius: 8,
                paddingRight: 0,
                paddingBottom: context.screenHeight * 0.0188,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
