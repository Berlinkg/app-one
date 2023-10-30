import 'package:flutter/material.dart';
import 'package:shop_app_2/common/widgets/text_widgets.dart';

import '../utils/colors.dart';

AppBar buildAppBar({String title=""}) {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.grey.withOpacity(0.3),
        height: 1,
      ),
    ),
    title: text16Normal(text: title, color: AppColors.primaryText),
  );
}
