import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:aya_4085/introduction.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Column(
      children: [
        Center(
          child: LottieBuilder.asset("assets/lottie/Easter Bunny and cute Chicks.json",width: 200,height: 300),
        )
      ],
    )
    , nextScreen: const Introduction(),splashIconSize: 300,backgroundColor: Colors.white,);
  }
}