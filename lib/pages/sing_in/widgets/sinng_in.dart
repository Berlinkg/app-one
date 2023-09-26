import 'package:flutter/material.dart';
import 'package:shop_app_2/common/widgets/button_widgets.dart';
import 'package:shop_app_2/common/widgets/text_widgets.dart';
import 'package:shop_app_2/pages/sing/sing_in_wideget.dart';
//import 'package:shop_app_2/pages/sing_in/widgets/chernbo_sing_in_wideget.dart';

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
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                thirdPartyLogin(),
                Center(
                  child: text14Normal(text: 'just ecample juast example'),
                ),
                const SizedBox(
                  height: 50,
                ),
                appTextFile(
                    text: "Email",
                    iconName: "assets/images/use.png",
                    hinText: 'your name '),
                const SizedBox(
                  height: 20,
                ),
                appTextFile(
                    text: "Pasword",
                    iconName: "assets/images/loc.png",
                    hinText: 'your pasword',
                    obscureText: true),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    margin: const EdgeInsets.only(left: 25, right: 20, top: 10),
                    child: text14Normal(text: 'Forget your Password')),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: appButton(
                    buttonName: "Login",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: appButton(
                    buttonName: "Sing Up",
                    isLogin: true,
                    context: context,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
