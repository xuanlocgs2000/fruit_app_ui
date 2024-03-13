import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
import 'package:fruit_app_ui/model/menuItem_model.dart';

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
              _buildHeader(context),
              SizedBox(height: 10),
              _buildMenuList()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 10,
          decoration: BoxDecoration(color: ColorManager.primary),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30, left: 10, right: 10),
          child: Row(
            children: [
              IconButton(
                color: ColorManager.white,
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(width: 10),
              Text(
                "Setting",
                style: TextStyle(
                  color: ColorManager.white,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMenuList() {
    return
        // padding: EdgeInsets.only(left: 10),
        ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) => ListTile(
        leading:
            Icon(menuChildrenItem[index].icon, color: ColorManager.primary),
        title: Text(menuChildrenItem[index].title),
        // trailing: Icon(Icons.chevron_right),
      ),
      separatorBuilder: (_, __) => Container(
        height: 1,
        decoration: BoxDecoration(color: Color.fromARGB(255, 219, 212, 212)),
      ),
      itemCount: menuChildrenItem.length,
    );
  }
}
