import 'package:flutter/material.dart';
import 'package:onze_shop/pages/intro_screens/intro_page_1.dart';
import 'package:onze_shop/pages/intro_screens/intro_page_2.dart';
import 'package:onze_shop/pages/intro_screens/intro_page_3.dart';
import 'package:onze_shop/pages/language_choice_page/language_choice.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: BouncingScrollPhysics(),
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          /// Indicator ...!
          Container(
              alignment: const Alignment(0, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /// Skip ...!
                  GestureDetector(
                    onTap: () {
                      _controller.animateToPage(_controller.page!.round() - 1,
                          duration: const Duration(milliseconds: 350),
                          curve: Curves.easeIn);
                    },
                    child: const Text('Back'),
                  ),

                  /// Dot Indicator ...!
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    //effect: JumpingDotEffect(),
                  ),

                  /// Next or Done ...!
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const LanguageChoice();
                            }));
                          },
                          child: const Text('Done'),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 350),
                                curve: Curves.easeIn);
                          },
                          child: const Text('Next'),
                        ),
                ],
              ))
        ],
      ),
    );
  }
}
