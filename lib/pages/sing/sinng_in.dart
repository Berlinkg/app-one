import 'package:flutter/material.dart';
import 'package:shop_app_2/common/widgets/text_widgets.dart';
import 'package:shop_app_2/pages/sing/sing_in_wideget.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
              appBar: buildAppBar(),
              backgroundColor: Colors.white,
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  thirdPartyLogin(),
                  Center(
                      child: text14Normal(text: 'just ecample juast example')),
                  const SizedBox(
                    height: 50,
                  ),
                  appTextFile(text: "Email", iconName: "assets/images/use.png"),
                  const SizedBox(
                    height: 20,
                  ),
                  appTextFile(
                      text: "Pasword", iconName: "assets/images/loc.png"),
                ],
              )),
        ));
  }
}
