import 'package:flutter/material.dart';
import 'package:shop_app_2/common/utils/colors.dart';
import 'package:shop_app_2/common/widgets/app_shadou.dart';
import 'package:shop_app_2/common/widgets/text_widgets.dart';

Widget appButton({String buttonName = ""}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 40,
      width: 300,
      decoration: appBoxShadou(),
      child: text16Normal(text: buttonName, color: AppColors.primaryBackground),
    ),
  );
}
