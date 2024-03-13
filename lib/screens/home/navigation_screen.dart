import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/home/cart_screen.dart';
import 'package:fruit_app_ui/screens/favourite/favourite_screen.dart';
import 'package:fruit_app_ui/screens/home/home_screen.dart';
// import 'package:fruit_app_ui/screens/home/profile_screen.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:fruit_app_ui/screens/account/account_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Expanded(
        child: Container(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shopping Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Fav',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'User',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorManager.primary,
        unselectedItemColor: ColorManager.lightGrey,
        onTap: _onItemTapped,
      ),
      // extendBody: true,
    );
  }
}
