import 'dart:io';
import 'package:board_mobile/Core/constant/colors_constant.dart';
import 'package:board_mobile/Features/Auth/login/cubit/login_cubit.dart';
import 'package:board_mobile/Features/Auth/login/cubit/password_visibility_cubit.dart';
import 'package:board_mobile/Features/Auth/login/presentation/login_page.dart';
import 'package:board_mobile/Features/Auth/signup/cubit/signup_cubit.dart';
import 'package:board_mobile/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  await configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LoginCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<SignupCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<PasswordVisibilityCubit>(),
        ),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
