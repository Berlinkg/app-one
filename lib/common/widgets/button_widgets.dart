import 'package:flutter/material.dart';
// import 'package:shop_app_2/common/utils/colors.dart';

Widget appButton() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: const EdgeInsets.only(left: 45, right: 45),
      height: 40,
      width: 300,
      decoration: const BoxDecoration(color: Colors.blue),
    ),
  );
}
