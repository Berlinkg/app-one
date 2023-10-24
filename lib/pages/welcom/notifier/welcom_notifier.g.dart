// import 'package:riverpod_annotation/riverpod_annotation.dart';
part of 'welcom_notifier.dart';

String _$indexDotHash() => r'e995707d5f94452e5bee568aac0667da64';
//  IndexDot
//  @dotsIndex(IndexDot)
final dotsIndex = AutoDisposeNotifierProvider<IndexDot, int>.internal(
  IndexDot.new,
  name: r'indexDotProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? 
      null : _$indexDotHash,
  dependencies: null,
  allTransitiveDependencies: null,
);
typedef _$IndexDot = AutoDisposeNotifier<int>;
