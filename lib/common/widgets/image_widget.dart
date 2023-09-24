import 'package:flutter/material.dart';

Widget appImage({
  String imagePath = "assets/images/user.png",
  double widht = 16,
  double height = 16,
}) {
  return Image.asset(
    imagePath.isEmpty ? "" : imagePath,
    width: 16,
    height: 16,
  );
}
