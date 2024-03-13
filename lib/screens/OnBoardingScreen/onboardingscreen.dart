import 'package:fidel_debug/screens/OnBoardingScreen/intropage_screens/intropage_1.dart';
import 'package:fidel_debug/screens/OnBoardingScreen/intropage_screens/intropage_2.dart';
import 'package:fidel_debug/screens/OnBoardingScreen/intropage_screens/intropage_3.dart';
import 'package:fidel_debug/screens/OnBoardingScreen/intropage_screens/intropage_4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  createState() {
    return OnBoardingScreenState();
  }
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  // ignore: prefer_final_fields
  PageController controller = PageController();
  @override
  Widget build(context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              IntroPage_1(),
              IntroPage_2(),
              IntroPage_3(),
              IntroPage_4(),
            ],
          ),
          Container(
              // ignore: prefer_const_constructors
              alignment: Alignment(0, 0.8),
              child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  // ignore: prefer_const_constructors
                  effect: WormEffect(
                    dotColor: Colors.deepOrange,
                    activeDotColor: Colors.lightGreen,
                  )))
        ],
      ),
    );
  }
}
