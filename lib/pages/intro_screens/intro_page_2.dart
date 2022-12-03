import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// intro Page - 2
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Lottie.network(
                'https://assets9.lottiefiles.com/packages/lf20_w49jejqc.json',
                height: 250),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
              'Bizning Maxsulotlarimiz sifatli va xamyonbob narxlarda sotib olishingiz mumkun',
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 58, 228, 180),
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
