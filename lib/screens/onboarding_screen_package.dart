import 'dart:math';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w500,
      ),
      bodyTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
      pageColor: Colors.white,
      titlePadding: EdgeInsets.all(20.0),
      bodyPadding: EdgeInsets.zero,
    );

    return Scaffold(
      // appBar: AppBar{
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   actions:[TextButton(onPressed: (){},child: Text("Skip"), ],
      // },
      body: Column(
        children: [
          Expanded(
            child: IntroductionScreen(
              globalBackgroundColor: Colors.white,
              pages: [
                PageViewModel(
                  title: 'E Shopping',
                  body: 'Explore top organic fruits & grab them',
                  image: Image.asset('assets/images/onboarding/obimg1.png'),
                  decoration: pageDecoration,
                ),
                PageViewModel(
                  title: 'Delivery on the way',
                  body: 'Get your order by speed delivery',
                  image: Image.asset('assets/images/onboarding/obimg2.png'),
                  decoration: pageDecoration,
                ),
                PageViewModel(
                  title: 'Delivery Arrived',
                  body: 'Order is arrived at your Place',
                  image: Image.asset('assets/images/onboarding/obimg3.png'),
                  decoration: pageDecoration,
                ),
              ],
              showSkipButton: false,
              showDoneButton: false,
              showBackButton: true,
              // back: const Text("Back",
              //     style: TextStyle(
              //       fontSize: 15,
              //       fontWeight: FontWeight.w700,
              //       color: Color.fromARGB(255, 6, 152, 45),
              //     )),
              skip: Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.all(16.0),
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 6, 152, 45),
                  ),
                ),
              ),
              next: Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 6, 152, 45),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text("Next",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
              ),
              done: const Text("Get Started",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 6, 152, 45),
                  )),
              onDone: () {},
              onSkip: () {},
              dotsDecorator: const DotsDecorator(),
            ),
          ),
        ],
      ),
    );
  }
}
