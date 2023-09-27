import 'package:flutter/material.dart';

Widget thirdPartyLogin() {
  return Container(
      margin: const EdgeInsets.only(left: 80, right: 80, top: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _loginButton("assets/images/1.png"),
          _loginButton("assets/images/2.png"),
          _loginButton("assets/images/3.png")
        ],
      ));
}

Widget _loginButton(
  String imagePath,
) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40,
      height: 40,
      child: Image.asset(imagePath),
    ),
  );
}
