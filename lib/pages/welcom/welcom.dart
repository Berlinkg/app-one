import 'package:flutter/material.dart';
import 'package:shop_app_2/pages/welcom/widgets.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            children: [
              appOnboardingPage(
                  imagPath: "assets/images/4.png",
                  title: "first page",
                  subttile: 'subtitle in e first page '),
              appOnboardingPage(
                  imagPath: "assets/images/3.png",
                  title: 'secondpage',
                  subttile: 'sub titile secon in a secon page'),
              appOnboardingPage(
                  imagPath: "assets/images/5.png",
                  title: 'third page',
                  subttile: 'subtitle in ea third page')
            ],
          ),
          const Positioned(
            child: Text(''),
            bottom: 20,
            left: 25,
          )
        ],
      ),
    );
  }
}
