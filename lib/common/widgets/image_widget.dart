import 'package:flutter/material.dart';

Widget appImage(
    {String imagePath = "", double widht = 16, double height = 16}) {
  return Image.asset(
    imagePath.isEmpty ? "assets/images/user.png" : imagePath,
    width: 25,
    height: 25,
  );
}
