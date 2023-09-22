import 'package:flutter/material.dart';
import 'package:shop_app_2/common/utils/colors.dart';

BoxDecoration appBoxShadou() {
  return BoxDecoration(
    color: AppColors.primaryElement,
    borderRadius: BorderRadius.circular(15),
  );
}

BoxDecoration appBoxDEcorationTextFiled({
  Color color = AppColors.primarySecondaryBackground,
  double radius = 15,
  Color bordercolor = AppColors.primaryFourElementText,
}) {
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: bordercolor));
}
