import 'package:flutter/material.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
