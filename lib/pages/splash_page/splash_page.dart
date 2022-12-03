import 'dart:async';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  initTimer() {
    Timer(const Duration(seconds: 3), () {
      call();
    });
  }

  call() {
    Navigator.pushReplacementNamed(context, '/onboarding');
  }

  @override
  void initState() {
    super.initState();
    initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 4.0,
              width: MediaQuery.of(context).size.width / 2.4,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.blue,
                        blurRadius: 15,
                        spreadRadius: 1.0,
                        offset: Offset(5.0, 5.0)),
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15,
                        spreadRadius: 1.0,
                        offset: Offset(-4.0, -4.0))
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/Onze.jpg',
                      ))),
            ),
          )
        ],
      ),
    );
  }
}
