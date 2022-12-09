import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// intro Page - 3
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: Lottie.asset('assets/intro3.json')),
          const Text('online market',
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
