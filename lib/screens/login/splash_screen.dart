import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/home/home_screen.dart';
import 'package:fruit_app_ui/screens/login/onboarding_screen.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Onboard(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: ColorManager.primary,
            width: double.infinity,
            height: double.infinity,
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/splash/splash.png',
              fit: BoxFit.contain,
            ),
          ),
          //  text
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.5,
            left: 0,
            right: 0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fruit Market',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
