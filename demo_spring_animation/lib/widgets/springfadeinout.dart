import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class SpringFadeInOut extends StatefulWidget {
  const SpringFadeInOut({Key? key}) : super(key: key);
  @override
  State<SpringFadeInOut> createState() => _SpringFadeInOutState();
}

class _SpringFadeInOutState extends State<SpringFadeInOut> {
  final SpringController springController =
      SpringController(initialAnim: Motion.mirror);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Spring.fadeIn(
        //optional
        springController: springController, //used to control animation
        startOpacity: .3, // default  fadeIn= 0.0 fadeOut= 1.0
        endOpacity: 1.0, // default  fadeIn= 0.0 fadeOut= 1.0
        animDuration: Duration(seconds: 2), //default = 1
        // animStatus: (AnimStatus status) {
        //   print(status);
        // },
        curve: Curves.easeIn, //deafult=Curves.easInOut
        delay: const Duration(seconds: 1), //deafult = 1 second
        child: const FlutterLogo(),
      ),
    );
  }
}
