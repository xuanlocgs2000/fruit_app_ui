import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/home/home_screen.dart';
import 'package:fruit_app_ui/screens/login/pageview_model.dart';
import 'package:fruit_app_ui/screens/login/registerphone_screen.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

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
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: buildPageView(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "Skip",
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: 'Poppins',
              color: Color(0xff78787c),
            ),
          ),
        )
      ],
    );
  }

  PageView buildPageView() {
    return PageView.builder(
      itemCount: screens.length,
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      onPageChanged: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
      itemBuilder: (context, index) {
        return buildPageContent(index);
      },
    );
  }

  Column buildPageContent(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 60.0),
          child: Image.asset(screens[index].image),
          width: 200,
          height: 200,
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
        buildPageIndicator(),
        InkWell(
          onTap: () {
            if (index == screens.length - 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterPhoneScreen(),
                ),
              );
            }
            _pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.bounceIn,
            );
          },
          child: buildButton(index),
        ),
      ],
    );
  }

  Container buildPageIndicator() {
    return Container(
      margin: const EdgeInsets.only(top: 50.0, bottom: 80.0),
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
                margin: const EdgeInsets.symmetric(horizontal: 3.0),
                width: 8.0,
                height: 8,
                decoration: BoxDecoration(
                  color: currentIndex == index
                      ? ColorManager.primary
                      : Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Container buildButton(int index) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: currentIndex == index ? Color(0xff69A03A) : Colors.black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentIndex == screens.length - 1 ? "Get started" : "Next",
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 15.0),
          )
        ],
      ),
    );
  }
}
