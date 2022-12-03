import 'package:flutter/material.dart';
import 'package:onze_shop/pages/intro_screens/onboarding_screen.dart';
import 'package:onze_shop/pages/splash_page/splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Onze Kasmetika",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {
        '/splash': (context) => const SplashPage(),
        "/onboarding": (context) => const OnBoardingScreen(),
      },
      initialRoute: "/splash",
    );
  }
}
