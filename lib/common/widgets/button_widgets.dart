import 'package:flutter/material.dart';
import 'package:shop_app_2/common/utils/colors.dart';
import 'package:shop_app_2/common/widgets/app_shadou.dart';
import 'package:shop_app_2/common/widgets/text_widgets.dart';

Widget appButton({
  String buttonName = "",
  double hight = 40,
  double widht = 300,
  bool isLogin = true,
  BuildContext? context,
  void Function()? func,
}) {
  return GestureDetector(
    onTap: func,
    // onTap: () {
    //   Navigator.push(
    //       context!, MaterialPageRoute(builder: (context) => const SingIn()));
    //   // Navigator.push(
    //   //   context!,
    //   //   MaterialPageRoute(
    //   //     builder: (context) => const SingUp(),
    //   //   ),
    //   // );
    // },
    child: Container(
      //islogin true sen a primari element is not true send color white
      height: hight,
      width: widht,
      decoration: appBoxShadou(
          color: isLogin ? AppColors.primaryElement : Colors.white),
      child: text16Normal(
        text: buttonName,
        color: isLogin ? AppColors.primaryBackground : AppColors.primaryText,
      ),
    ),
  );
}
