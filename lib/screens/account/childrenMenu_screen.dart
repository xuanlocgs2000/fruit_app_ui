import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
import 'package:fruit_app_ui/model/menuItem_model.dart';
import 'package:fruit_app_ui/screens/resource/header.dart';
import 'package:fruit_app_ui/screens/resource/menu.dart';

List<MenuItem> menuChildrenItem = [
  MenuItem(
    title: 'Account',
    buttonText: 'Account',
    icon: Icons.favorite,
  ),
  MenuItem(
    title: 'Notifications',
    buttonText: 'Notifications',
    icon: Icons.shopping_cart,
  ),
  MenuItem(
    title: 'Language',
    buttonText: 'Language',
    icon: Icons.language,
  ),
  MenuItem(
    title: 'Change Address',
    buttonText: 'Address',
    icon: Icons.local_activity,
  ),
];

class ChildrenMenuScreen extends StatelessWidget {
  const ChildrenMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: SafeArea(
          child: Column(
            children: [
              HeaderWidget(
                  context: context,
                  headerHeight: MediaQuery.of(context).size.height / 10),
              SizedBox(height: 10),
              MenuListWidget(menuList: menuChildrenItem),
            ],
          ),
        ),
      ),
    );
  }
}
