import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Into Page - 1
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Lottie.network(
                'https://assets10.lottiefiles.com/packages/lf20_5ngs2ksb.json'),
          ),
          const Text('Welcome to the online market',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.w500)),
          const Text('oNze',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.orange,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
