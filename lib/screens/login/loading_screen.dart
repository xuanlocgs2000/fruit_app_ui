import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/login/sucess_screen.dart';
import 'package:nuts_activity_indicator/nuts_activity_indicator.dart';

class LoadingScreen extends StatelessWidget {
  LoadingScreen({super.key});

  final spinner = const NutsActivityIndicator(
    activeColor: Color.fromARGB(255, 45, 161, 9),
    inactiveColor: Color.fromARGB(255, 6, 199, 103),
    tickCount: 8,
    relativeWidth: 0.8,
    radius: 55,
    startRatio: 0.5,
    animationDuration: Duration(milliseconds: 1000),
  );
  // final NutsActivityIndicator indicator;
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                SucessScreen()), // Thay YourNextScreen bằng tên màn hình bạn muốn chuyển đến
      );
    });

    return Material(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 200,
          ),
          // Image.asset("assets/images/icons/loading.png"),
          spinner,
          const SizedBox(
            height: 50,
          ),
          const Text("Verifying Your Mobile Number"),
        ],
      ),
    );
  }
}
