import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  // const OnboardingScreen({super.key});
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      pageColor: Colors.white,
      titlePadding: EdgeInsets.all(20.0),
      bodyPadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'E Shopping',
          body: 'Explore  top organic fruits & grab them',
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
      back: const Text("Back",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 6, 152, 45),
          )),
      skip: const Text("Skip",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 6, 152, 45),
          )),
      next: const Text("Next",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 6, 152, 45),
          )),
      done: const Text("Get Started",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 6, 152, 45),
          )),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: const DotsDecorator(),
    );
  }
}
