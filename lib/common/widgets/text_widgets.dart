import 'package:flutter/material.dart';
import 'package:shop_app_2/common/utils/colors.dart';

Widget text24Normal({String text = '', Color color = AppColors.primaryText}) {
  AppColors colors = AppColors();
  colors.x = 10;

  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.normal),
  );
}

Widget text16Normal(
    {String text = '', Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.normal),
  );
}

Widget text14Normal(
    {String text = '', Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.normal),
  );
}
