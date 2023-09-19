// import 'dart:math';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_2/pages/welcom/widgets.dart';

class Welcom extends StatefulWidget {
  Welcom({super.key});

  @override
  State<Welcom> createState() => _WelcomState();
}

class _WelcomState extends State<Welcom> {
  final PageController _controller = PageController();

  int dotsIndex = 0;
  @override
  Widget build(BuildContext context) {
    print('my dots index $dotsIndex');
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            body: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Stack(
            alignment: Alignment.center,
            children: [
              //our three pages
              PageView(
                onPageChanged: (value) {
                  print('your index is index $dotsIndex');
                  setState(() {
                    dotsIndex = value;
                  });
                },
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  appOnboardingPage(_controller,
                      imagPath: "assets/images/4.png",
                      title: "first page",
                      subttile: 'subtitle in e first page ',
                      index: 1),
                  appOnboardingPage(_controller,
                      imagPath: "assets/images/5.png",
                      title: 'secondpage',
                      subttile: 'sub titile secon in a secon page',
                      index: 2),
                  appOnboardingPage(_controller,
                      imagPath: "assets/images/5.png",
                      title: 'third page',
                      subttile: 'subtitle in ea third page',
                      index: 3)
                ],
              ),
              //our three pages
              Positioned(
                bottom: 20,
                child: DotsIndicator(
                  dotsCount: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(22.0, 8.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
