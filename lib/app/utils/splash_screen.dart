import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_msa/main_page.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(children: [
        Image.asset('assets/images/unit.png'),
        const Text(
          'UT Portal Mechanic',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        )
      ]),
      backgroundColor: Colors.white,
      nextScreen: const MainPage(),
      splashIconSize: 300,
      duration: 3000,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.leftToRight,
      animationDuration: const Duration(seconds: 1),
    );
  }
}