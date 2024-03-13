import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
import 'package:fruit_app_ui/model/menuItem_model.dart';

class MenuListWidget extends StatelessWidget {
  final List<MenuItem> menuList;

  const MenuListWidget({Key? key, required this.menuList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) => ListTile(
        leading: Icon(menuList[index].icon, color: ColorManager.primary),
        title: Text(menuList[index].title),
        // trailing: Icon(Icons.chevron_right),
      ),
      separatorBuilder: (_, __) => Container(
        height: 1,
        decoration: BoxDecoration(color: Color.fromARGB(255, 219, 212, 212)),
      ),
      itemCount: menuList.length,
    );
  }
}
