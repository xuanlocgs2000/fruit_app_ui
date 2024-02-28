import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabs = ["Vegetables ", "Fruits", "Dry Fruits"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 5.0),
          decoration: BoxDecoration(
            color: ColorManager.primary,
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fruit Market',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold)),
                Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3, bottom: 20),
            ),
            Container(
              // margin: EdgeInsets.only(top: 5, bottom: 0),
              margin: EdgeInsets.only(top: 5, bottom: 0),
              padding: EdgeInsets.only(bottom: 6),
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle:
                      TextStyle(color: ColorManager.black.withOpacity(0.5)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: ColorManager.black.withOpacity(0.3),
                    size: 25,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
          ]),
        ),
        // ListView.builder(
        //   shrinkWrap: true,
        //   itemBuilder: (BuildContext context, int index) {
        //     return FittedBox(
        //       child: Container(
        //         height: 40,
        //         margin: EdgeInsets.all(8),
        //         padding: EdgeInsets.only(left: 15, right: 15),
        //         decoration: BoxDecoration(
        //           color: ColorManager.black.withOpacity(0.05),
        //         ),
        Center(
          child: FittedBox(
            child: Text(
              'Category',
              style: TextStyle(
                color: ColorManager.black,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        //       ),
        //     );
        //   },
        //   itemCount: tabs.length,
        //   scrollDirection: Axis.horizontal,
        // ),
      ]),
    );
  }
}
