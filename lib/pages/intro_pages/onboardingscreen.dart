import 'package:flutter/material.dart';
import 'package:coal_transport_tracker/pages/intro_pages/intro_page1.dart';
import 'package:coal_transport_tracker/pages/intro_pages/intro_page2.dart';
import 'package:coal_transport_tracker/pages/login_forgotpass/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}
class _OnBoardingScreenState extends State<OnBoardingScreen> {

  //shows which page we are currently on
  final PageController _controller = PageController();

  //checking if we are in the first page or not
  bool onFirstPage = true;

  //checking if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 1);
                onFirstPage = (index == 0);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
            ],
          ),

          // smooth page indicator
          Container(
            alignment: const Alignment(0, 0.78),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //previous button
                onFirstPage
                    ?
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) {
                          return const LoginPage();
                        },),
                      );
                      },
                  child: const Text("Skip",
                    style: TextStyle(fontSize: 18,
                    ),
                  ),

                )
                    :
                GestureDetector(
                    onTap: () {
                      _controller.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);},
                  child: const Text("<  Prev",
                    style: TextStyle(fontSize: 18,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                    controller: _controller,
                    count: 2,
                    textDirection: TextDirection.ltr,
                    effect: JumpingDotEffect(
                      activeDotColor: Colors.blueAccent,
                      dotColor: Colors.blueAccent.shade100,
                      dotHeight: 15,
                      dotWidth: 15,
                      spacing: 16,
                    ),
                ),
                onLastPage
                    ? GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) {
                          return const LoginPage();
                        },),
                    );
                  },
                  child: const Text("Start  >",
                    style: TextStyle(fontSize: 18,
                    ),
                  ),
                )
                    :
                //next button
                GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);},
                    child: const Text("Next  >"),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}