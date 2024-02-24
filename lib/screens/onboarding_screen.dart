import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/home_screen.dart';
import 'package:fruit_app_ui/screens/pageview_model.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: const EdgeInsets.only(top: 50.0),
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("Skip"),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: PageView.builder(
              itemCount: screens.length,
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 60.0), //
                      child: Image.asset(screens[index].image),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50.0, bottom: 30.0),
                      child: Text(
                        screens[index].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 27.0,
                          fontWeight: FontWeight.w100,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      screens[index].body,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Poppins',
                        color: const Color(0xff78787c),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50.0, bottom: 80.0),
                      height: 10.0,
                      child: ListView.builder(
                          itemCount: screens.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 3.0),
                                  width: 8.0,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: currentIndex == index
                                        ? Colors.green
                                        : Color.fromARGB(255, 157, 155, 154),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                )
                              ],
                            );
                          }),
                    ),
                    InkWell(
                      onTap: () {
                        if (index == screens.length - 1) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        }
                        _pageController.nextPage(
                          duration: Duration(microseconds: 300),
                          curve: Curves.bounceIn,
                        );
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            color: currentIndex == index
                                ? Colors.green
                                : Colors.black,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                currentIndex == screens.length - 1
                                    ? "Get started"
                                    : "Next",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15.0),
                              )
                            ],
                          )),
                    ),
                  ],
                );
              })),
    );
  }
}
