import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/User/exams/presentation/exams_page.dart';
import 'package:board_mobile/Features/User/home_page/presentation/home_page.dart';
import 'package:board_mobile/Features/User/my_transactions/presentation/my_transactions_page.dart';
import 'package:board_mobile/Features/User/profile/presentation/profile_page.dart';
import 'package:board_mobile/Features/Widgets/home/elemnts_home.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List screens = [
    const HomePage(),
    const MyTransactionsPage(),
    const ExamsPage(),
    const ProfilePage(),
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
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.screenWidth * 0.0909,
          vertical: context.screenHeight * 0.0188,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(context.screenWidth * 0.136),
          ),
          child: BottomAppBar(
            color: ColorConstant.mainColor,
            height: context.screenHeight * 0.0732,
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: context.screenWidth * 0.01,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElemntsHome(
                  icon: Icons.home,
                  value: 0,
                  index: _index,
                  onTap: () {
                    changePage(0);
                  },
                ),
                ElemntsHome(
                  icon: Icons.file_copy,
                  value: 1,
                  index: _index,
                  onTap: () {
                    changePage(1);
                  },
                ),
                ElemntsHome(
                  icon: Icons.fact_check,
                  value: 2,
                  index: _index,
                  onTap: () {
                    changePage(2);
                  },
                ),
                ElemntsHome(
                  icon: Icons.person,
                  value: 3,
                  index: _index,
                  onTap: () {
                    changePage(3);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: screens.elementAt(_index),
    );
  }
}
