import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(114.0),
          child: AppBar(
            backgroundColor: ColorManager.primary,
            elevation: 0.0,
            title: const Text(
              'HOME',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: ColorManager.white,
              ),
            ),

            // child:Row(),
          ),
        ));
  }
}
