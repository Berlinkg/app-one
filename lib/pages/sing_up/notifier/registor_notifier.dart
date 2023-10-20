import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop_app_2/pages/sing_up/notifier/register_state.dart';
part 'registor_notifier.g.dart';

@riverpod
class RegistorNotifier extends _$RegistorNotifier {
  @override
  RegisterState build() {
    return RegisterState();
  }

  void onUserNameChange(String name) {
    state = state.copyWith(userName: name);
  }

  void onUserEmailChange(String email) {
    state = state.copyWith(email: email);
  }
}
