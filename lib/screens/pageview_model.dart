// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PageViewModel {
  String image;
  String title;
  String body;
  Color bg;
  Color button;
  PageViewModel({
    required this.image,
    required this.title,
    required this.body,
    required this.bg,
    required this.button,
  });
}

List<PageViewModel> screens = <PageViewModel>[
  PageViewModel(
    image: 'assets/images/onboarding/obimg1.png',
    title: 'E Shopping',
    body: 'Explore top organic fruits & grab them',
    bg: Colors.red,
    button: Colors.white,
  ),
  PageViewModel(
    image: 'assets/images/onboarding/obimg1.png',
    title: 'Delivery on the way',
    body: 'Get your order by speed delivery',
    bg: Colors.green,
    button: Colors.white,
  ),
  PageViewModel(
    image: 'assets/images/onboarding/obimg1.png',
    title: 'Delivery Arrived',
    body: 'Order is arrived at your Place',
    bg: Colors.blue,
    button: Colors.white,
  ),
];
