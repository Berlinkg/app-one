import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_app_2/common/widgets/popup_mesage.dart';
import 'package:shop_app_2/pages/sing_up/notifier/registor_notifier.dart';

class SingUpController {
  late WidgetRef ref;
  SingUpController({required this.ref});

  Future<void> hanleSingUp() async {
    var state = ref.read(registorNotifierProvider);
    String name = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    if (state.userName.isEmpty || name.isEmpty) {
      print("your nmaae is empty");
    }
    if (state.userName.length < 6 || name.length < 6) {
      print("your name is empty");
    }
    if ((state.password != state.rePassword) || password != rePassword) {
      print('your pasword did not match');
    }
    if (state.password != state.rePassword) {
      toastInfo("your password is not");
      return;
    }

    ///!we hve mistake
    ///!important tasks
    //  var context=Navigator.of(ref.context);
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (kDebugMode) {
        print(credential);
      }
      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(name);
        //!olso
        ///
        // toastInfo('nasbvksbkfbwfkbfwggwegwergwergwe');context.pop();
        //?
      }
    } catch (e) {}
  }
}
