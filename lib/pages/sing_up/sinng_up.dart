import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_app_2/common/widgets/app_text_filed.dart';
import 'package:shop_app_2/common/widgets/button_widgets.dart';
import 'package:shop_app_2/common/widgets/text_widgets.dart';
import 'package:shop_app_2/pages/sing_in/widgets/sing_in_wideget.dart';
import 'package:shop_app_2/pages/sing_up/notifier/registor_notifier.dart';
import '../../common/widgets/app_bar.dart';

class SingUp extends ConsumerWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //we have mistake hear
    ///we need to  improve
     dynamic regProvider = ref.watch(Provider((ref) => null));
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
                  child: text14Normal(text: 'Entor ypur email & free one'),
                ),
                const SizedBox(
                  height: 50,
                ),
                appTextFile(
                  text: "Name",
                  iconName: "assets/images/use.png",
                  hinText: 'your name ',
                  func: (value) => ref
                      .read(registorNotifierProvider.notifier)
                      .onUserNameChange(value),
                ),
                const SizedBox(
                  height: 20,
                ),
                appTextFile(
                  text: "Email",
                  iconName: "assets/images/loc.png",
                  hinText: 'Enter your email  adress',
                  obscureText: true,
                  func: (value) => ref
                      .read(registorNotifierProvider.notifier)
                      .onUserNameChange(value),
                ),
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
                    //func: (value)=>ref.read(registorNotifierProvider.notifier).onUserEmailChange(value),
                    func: () => Navigator.pushNamed(context, "/registor"),
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
//!