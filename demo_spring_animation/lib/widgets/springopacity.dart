import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class SpringOpacity extends StatefulWidget {
  const SpringOpacity({Key? key}) : super(key: key);
  @override
  State<SpringOpacity> createState() => _SpringOpacityState();
}

class _SpringOpacityState extends State<SpringOpacity> {
  final SpringController springController =
      SpringController(initialAnim: Motion.mirror);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Spring.opacity(
        springController: springController,
        startOpacity: 1.0,
        endOpacity: 0.3,
        animDuration: const Duration(seconds: 2), //def=1s
        curve: Curves.bounceOut, //def=Curves.easInOut
        delay: const Duration(seconds: 1), //def=0
        child: const FlutterLogo(),
      ),
    );
  }
}
