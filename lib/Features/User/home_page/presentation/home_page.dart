import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Core/extension/screen_size_extension.dart';
import 'package:board_mobile/Features/User/Specializations/presentation/Specializations_page.dart';
import 'package:board_mobile/Features/User/SubmitTransaction/presentation/Submit_Transaction_page.dart';
import 'package:board_mobile/Features/User/Transactions/presentation/Transactions_page.dart';
import 'package:board_mobile/Features/User/AdvertisemenContent/presentation/advertisemen_content_page.dart';
import 'package:board_mobile/Features/User/advertisemens/presentation/advertisemenspage.dart';
import 'package:board_mobile/Features/Widgets/home/advertisement_home.dart';
import 'package:board_mobile/Features/Widgets/home/specializations_home.dart';
import 'package:board_mobile/Features/Widgets/home/titel_elemnt_home.dart';
import 'package:board_mobile/Features/Widgets/home/titel_home.dart';
import 'package:board_mobile/Features/Widgets/home/transactions_home.dart';
import 'package:board_mobile/trash/data/advertisement_data.dart';
import 'package:board_mobile/trash/data/specializations_data.dart';
import 'package:board_mobile/trash/data/transactions_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.screenWidth,
        height: context.screenHeight,
        color: ColorConstant.whitebackground,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitelHome(
                text1: "مرحباً",
                text2: "د.محمد ملهم",
                onTapNotifications: () {},
              ),

              TitelElemntHome(
                text: 'الإعلانات',
                paddingRight: context.screenWidth * 0.58,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Advertisemenspage(),
                    ),
                  );
                },
              ),
              AdvertisementHome(
                titel: "صدور نتائج المفاضلة العامة لعام 2025",
                date: "17-7-2025",
                onTapReadMore: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdvertisemenContentPage(),
                    ),
                  );
                },
                advertisements: advertisements,
              ),
              TitelElemntHome(
                text: 'المعاملات',
                paddingRight: context.screenWidth * 0.551,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TransactionsPage(),
                    ),
                  );
                },
              ),
              TransactionsHome(
                titel: '',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SubmitTransactionPage(),
                    ),
                  );
                },
                transactions: transactions,
              ),
              TitelElemntHome(
                text: 'الاختصاصات',
                paddingRight: context.screenWidth * 0.522,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SpecializationsPage(),
                    ),
                  );
                },
              ),
              SpecializationsHome(
                specializations: specializations,
                scrollDirection: Axis.horizontal,
                heightListBuilder: context.screenHeight * 0.2,
                interwidth: context.screenWidth * 0.55,
                heightContainer: context.screenHeight * 0.2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
