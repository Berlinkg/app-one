import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_app_2/pages/welcom/widgets.dart';

final indexProvider = StateProvider((ref) => 0);

class Welcom extends ConsumerWidget {
  Welcom({super.key});

  final PageController _controller = PageController();
  // dynamic context;
  int dotsIndex = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('my dots index $dotsIndex');
    final index = ref.watch(indexProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            body: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Stack(
            alignment: Alignment.center,
            children: [
              //our three pages
              PageView(
                onPageChanged: (value) {
                  print('your index is index $dotsIndex');
                  dotsIndex = value;
                  ref.read(indexProvider.notifier).state = value;
                  // setState(() {
                  //   dotsIndex = value;
                  // });
                },
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  appOnboardingPage(
                    _controller,
                    imagPath: "assets/images/4.png",
                    title: "first page",
                    subttile: 'subtitle in e first page ',
                    index: 1,
                    context: context,
                  ),
                  appOnboardingPage(
                    _controller,
                    imagPath: "assets/images/5.png",
                    title: 'secondpage',
                    subttile: 'sub titile secon in a secon page',
                    index: 2,
                    context: context,
                  ),
                  appOnboardingPage(
                    _controller,
                    imagPath: "assets/images/5.png",
                    title: 'third page',
                    subttile: 'subtitle in ea third page',
                    index: 3,
                    context: context,
                  )
                ],
              ),
              //our three pages
              Positioned(
                bottom: 20,
                child: DotsIndicator(
                  position: index,
                  dotsCount: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(22.0, 8.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
