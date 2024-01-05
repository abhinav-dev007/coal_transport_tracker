import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  final List<String> title = ['Real Time Notifications'];
  final List<String> description = ['Receive Real Time Notifications in case of an event'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 200,),
            Lottie.asset('lib/assets/animations/notification_lottie.json',
              reverse: true,
            ),
            const SizedBox(height: 20,),
            Text(
              title[0],style: const TextStyle(
                fontSize: 26,fontWeight: FontWeight.bold
            ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20
              ),
              child: Text(
                description[0],textAlign: TextAlign.center,style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.normal,
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
