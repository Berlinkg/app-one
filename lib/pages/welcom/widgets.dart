import 'package:flutter/material.dart';
import 'package:shop_app_2/common/widgets/app_shadou.dart';
import 'package:shop_app_2/common/widgets/text_widgets.dart';

Widget appOnboardingPage(
  PageController controller, {
  String imagPath = '',
  String title = '',
  String subttile = '',
  index = 0,
  context,
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
      nextButton(index, controller, context),
    ],
  );
}

Widget nextButton(int index, PageController controller, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      } else {
        Navigator.pushNamed(context, "/singIn");
        // Navigator.push(
        // context,
        // MaterialPageRoute(builder: (context) => const  SingIn()),
        // );
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadou(),
      child: Center(
        child: text16Normal(text: 'next', color: Colors.white),
      ),
    ),
  );
}
