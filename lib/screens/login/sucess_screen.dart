import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/login/infomation_screen.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      // Sau khi chờ 2 giây, điều hướng đến màn hình khác
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              InformationScreen(), // Thay NextScreen bằng màn hình muốn chuyển đến
        ),
      );
    });
    return Material(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 200,
          ),
          Image.asset("assets/images/icons/sucess.png"),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Verification Code Send \non your Registered Mobile Number ",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
