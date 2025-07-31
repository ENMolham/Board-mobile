import 'dart:io';
import 'package:board_desktop/Core/constant/colors_constant.dart';
import 'package:board_desktop/Features/Auth/login/presentation/login_page.dart';
import 'package:flutter/material.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MultiBlocProvider(
        //   providers: [
        //     // BlocProvider(
        //     //   create: (context) => getIt<CreateaccountCubit>(),
        //     // ),
        //   ],
        //   child:
        MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      theme: ThemeData(
        fontFamily: 'Cairo',
        primaryColor: ColorConstant.mainColor,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: ColorConstant.mainColor,
        ),
      ),
      home: const LoginPage(),
    );
  }
}
