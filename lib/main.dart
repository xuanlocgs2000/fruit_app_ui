import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_app_ui/screens/onboarding_screen.dart';

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
      theme: ThemeData(primaryColor: const Color(0xFF69A03A)),
      home: const Onboard(),
    );
  }
}
