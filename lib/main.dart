import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_app_ui/screens/home/home_screen.dart';
import 'package:fruit_app_ui/screens/home/navigation_screen.dart';
import 'package:fruit_app_ui/screens/login/infomation_screen.dart';
import 'package:fruit_app_ui/screens/login/loading_screen.dart';
import 'package:fruit_app_ui/screens/login/onboarding_screen.dart';
import 'package:fruit_app_ui/screens/login/phone_screen.dart';
import 'package:fruit_app_ui/screens/login/registerphone_screen.dart';
import 'package:fruit_app_ui/screens/login/splash_screen.dart';
import 'package:fruit_app_ui/screens/login/sucess_screen.dart';
import 'package:fruit_app_ui/screens/login/verify_screen.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
import 'package:fruit_app_ui/screens/home/products_section.dart';
import 'package:fruit_app_ui/screens/product/productDetail_screen.dart';
import 'package:fruit_app_ui/screens/favourite/favourite_screen.dart';
import 'package:fruit_app_ui/screens/order/order_screen.dart';
import 'package:fruit_app_ui/screens/account/account_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: ColorManager.primary),
      // home: const Onboard(),
      // home: RegisterPhoneScreen(),
      // home: LoadingScreen(),
      // home: HomeScreen(),
      home: NavigationScreen(),
      // home: SplashScreen(),
      // home: ProductDetails(),
      // home: FavouriteScreen(),
      // home: OrderScreen(),
      // home: AccountScreen(),
    );
  }
}
