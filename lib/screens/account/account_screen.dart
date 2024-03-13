import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
import 'package:fruit_app_ui/screens/home/products_section.dart';
import 'package:fruit_app_ui/screens/product/ratingBar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:fruit_app_ui/model/menuItem_model.dart';

List<MenuItem> menuItem = [
  MenuItem(
    title: 'My Orders',
    buttonText: 'My Orders',
    icon: Icons.shopping_bag,
  ),
  MenuItem(
    title: 'Profile',
    buttonText: 'Profile',
    icon: Iconsax.personalcard,
  ),
  MenuItem(
    title: 'Favourite',
    buttonText: 'My Wishlist',
    icon: Icons.favorite,
  ),
  MenuItem(
    title: 'My cart',
    buttonText: 'Cart',
    icon: Icons.shopping_cart,
  ),
  MenuItem(
    title: 'Settings',
    buttonText: 'Settings',
    icon: Icons.reviews_outlined,
  ),
  MenuItem(
    title: 'Rate us',
    buttonText: 'Rate',
    icon: Icons.reviews_outlined,
  ),
  MenuItem(
    title: 'Logout',
    buttonText: 'Logout',
    icon: Icons.logout,
  ),
];

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            _buildHeaderBackground(context),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(),
                  SizedBox(height: 20),
                  _buildMenuList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderBackground(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4.5,
      decoration: BoxDecoration(color: ColorManager.primary),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(''),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Manish Chutake',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'manishuxuid@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(
                  Iconsax.edit,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuList() {
    return
        // padding: EdgeInsets.only(left: 10),
        ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) => ListTile(
        leading: Icon(menuItem[index].icon, color: ColorManager.primary),
        title: Text(menuItem[index].title),
        // trailing: Icon(Icons.chevron_right),
      ),
      separatorBuilder: (_, __) => Container(
        height: 1,
        decoration: BoxDecoration(color: Color.fromARGB(255, 219, 212, 212)),
      ),
      itemCount: menuItem.length,
    );
  }
}
