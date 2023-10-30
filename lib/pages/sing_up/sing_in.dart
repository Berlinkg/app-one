import 'package:flutter/material.dart';
import 'package:shop_app_2/common/widgets/app_bar.dart';
import 'package:shop_app_2/common/widgets/app_text_filed.dart';
import 'package:shop_app_2/common/widgets/button_widgets.dart';
import 'package:shop_app_2/common/widgets/text_widgets.dart';


class SingIn extends StatelessWidget {
  const SingIn({super.key});
//!bul akirki sing up page adaspa
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(title: "Sing Up"),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // thirdPartyLogin(),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: text14Normal(text: 'enter your email free omes'),
                ),
                const SizedBox(
                  height: 20,
                ),
                  appTextFile(
                    text: "User name",
                    iconName: "assets/images/use.png",
                    hinText: 'Enter your name ',
                    // obscureText: true,
                    func: (value) =>(value)
                     
                    ),
                const SizedBox(
                  height: 20,
                ),
                  appTextFile(
                    text: "Enter your email",
                    iconName: "assets/images/use.png",
                    hinText: 'Enter your email adres ',
                    func: (value) =>(value)
                     
                    ), 
                const SizedBox(
                  height: 20,
                ),
                appTextFile(
                    text: "Pasword",
                    iconName: "assets/images/loc.png",
                    hinText: 'Enter your password ',
                    obscureText: true,
                    func: (value) =>(value)
                    // ref.read(registorNotifierProvider.notifier).onUserNameChange(value),
                     
                    ),
                const SizedBox(
                  height: 20,
                ),
                appTextFile(
                    text: "Confirm your pasword",
                    iconName: "assets/images/loc.png",
                    hinText: 'Enter your confirm pasword',
                    obscureText: true),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    margin: const EdgeInsets.only(left: 25, right: 20, top: 10),
                    child: text14Normal(text: "By creating any acount ")),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: appButton(
                    buttonName: "Registor",
                    isLogin: false,
                    context: context,
                    func: () {
                      print("registor");
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
