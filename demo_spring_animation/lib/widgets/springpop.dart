import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class SpringPop extends StatefulWidget {
  const SpringPop({Key? key}) : super(key: key);
  @override
  State<SpringPop> createState() => _SpringPopState();
}

class _SpringPopState extends State<SpringPop> {
  final SpringController springController =
      SpringController(initialAnim: Motion.mirror);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Spring.pop(
        delay: const Duration(seconds: 1),
        animDuration: const Duration(seconds: 2),
        springController: springController, //control animations
        child: const FlutterLogo(),
      ),
    );
  }
}
