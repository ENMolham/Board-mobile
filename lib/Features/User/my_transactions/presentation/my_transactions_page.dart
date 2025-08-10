import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/constant/image_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/Widgets/my_transactions/buttons.dart';
import 'package:board_mobile/Features/Widgets/my_transactions/end_transactions.dart';
import 'package:board_mobile/Features/Widgets/my_transactions/process_transactions.dart';
import 'package:board_mobile/trash/data/transactions_data.dart';
import 'package:flutter/material.dart';

class MyTransactionsPage extends StatefulWidget {
  const MyTransactionsPage({super.key});

  @override
  State<MyTransactionsPage> createState() => _MyTransactionsPageState();
}

class _MyTransactionsPageState extends State<MyTransactionsPage> {
  List screens = [
    ProcessTransactions(transactions: transactions),
    EndTransactions(transactions: transactions),
  ];
  int _index = 0;

  void changePage(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whitebackground,
      appBar: PreferredSize(
        preferredSize: Size(context.screenWidth, context.screenHeight * 0.2165),
        child: AppBar(
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 0,
          elevation: 0,
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Image.asset(ImageConstant.login, fit: BoxFit.cover),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: context.screenWidth,
          height: context.screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Buttons(
                index: _index,
                onTap1: () {
                  changePage(0);
                },
                onTap2: () {
                  changePage(1);
                },
              ),
              SizedBox(
                width: context.screenWidth,
                height: context.screenHeight * 0.58,
                child: screens.elementAt(_index),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
