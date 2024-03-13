import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';

class HeaderWidget extends StatelessWidget {
  final BuildContext context;
  final double headerHeight;
  const HeaderWidget(
      {Key? key, required this.context, required this.headerHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: headerHeight,
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
                "Favourite",
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
}
