import 'package:flutter/material.dart';
// import 'package:shop_app_2/common/widgets/app_shadou.dart';
import 'package:shop_app_2/common/widgets/text_widgets.dart';

Widget appOnboardingPage({
  String imagPath = 'assets/images/1.png',
  String title = '',
  String subttile = '',
}) {
  return Column(
    children: [
      Image.asset(
        imagPath,
        fit: BoxFit.fitWidth,
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        child: text24Normal(text: title),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: text16Normal(text: subttile),
      ),
      nextButton(),
    ],
  );
}

Widget nextButton() {
  return Container(
    width: 300,
    height: 77,
    color: Colors.blue,
    margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
  );
}
