import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'welcom_notifier.g.dart';

@riverpod
class IndexDot extends _$IndexDot {
  @override
  int build() {
    return 0;
  }
}

void changeIndex(int value,int state) {
   state = value;
}
