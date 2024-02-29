import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class SpringBlink extends StatefulWidget {
  const SpringBlink({Key? key}) : super(key: key);
  @override
  State<SpringBlink> createState() => _SpringBlinkState();
}

class _SpringBlinkState extends State<SpringBlink> {
  final SpringController springController =
      SpringController(initialAnim: Motion.mirror);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Spring.blink(
        springController: springController, //control animations
        startOpacity: 0.3, //default=0.0
        endOpacity: 1.0, //default=1.1
        child: const FlutterLogo(),
      ),
    );
  }
}
