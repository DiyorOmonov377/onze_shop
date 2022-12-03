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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Lottie.network(
                'https://assets1.lottiefiles.com/packages/lf20_pOgO5H.json'),
          ),
          const Text('Yetkazib berish xizmati ham mavjud',
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 58, 228, 180),
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
