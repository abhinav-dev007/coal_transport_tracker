import 'package:flutter/material.dart';
import 'dart:async';
import 'onboardingscreen.dart';
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  //navigation to intropage1
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=> Navigator.of(
                context).pushReplacement(
                MaterialPageRoute(
                    builder: (
                        BuildContext context) => const OnBoardingScreen()
                )
            ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Stack(
            children: [
              Image.asset('lib/assets/images/introscreenbg.jpg'),
          ]
          ),
        ),
      ),
    );
  }
}
