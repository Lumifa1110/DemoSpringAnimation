import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class SpringSlide extends StatefulWidget {
  const SpringSlide({Key? key}) : super(key: key);
  @override
  State<SpringSlide> createState() => _SpringSlideState();
}

class _SpringSlideState extends State<SpringSlide> {
  final SpringController springController =
      SpringController(initialAnim: Motion.mirror);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Spring.slide(
        springController: springController, //optional
        slideType: SlideType.slide_in_left, //required
        withFade: true, // default false
        animDuration: const Duration(seconds: 2), //default 1 second
        //optional
        // animStatus: (AnimStatus status) {
        //   print(status.toString());
        // },
        curve: Curves.easeIn, //default Curves.eadInOut
        delay: const Duration(milliseconds: 300), //default 0 second
        extend: 30, //default 10
        child: const FlutterLogo(),
      ),
    );
  }
}
