import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  final List<String> title = ['Real Time Location Tracking'];
  final List<String> description = ['Receive real time locations!'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 200,),
              Lottie.asset('lib/assets/animations/map_lottie.json',
                height: 250,
                width: 250,
                reverse: true,
              ),
              const SizedBox(height: 20,),
              Text(title[0],style: const TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
           const SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20
             ),
             child: Text(
               description[0],textAlign: TextAlign.center,style: const TextStyle(
               fontSize: 20, fontWeight: FontWeight.normal,
             ),
             ),
           ),
            ],
          ),
        ),
      ),
    );
  }
}

