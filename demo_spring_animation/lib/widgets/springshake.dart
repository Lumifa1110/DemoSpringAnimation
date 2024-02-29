import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class SpringShake extends StatefulWidget {
  const SpringShake({Key? key}) : super(key: key);
  @override
  State<SpringShake> createState() => _SpringShakeState();
}

class _SpringShakeState extends State<SpringShake> {
  final SpringController springController =
      SpringController(initialAnim: Motion.mirror);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Spring.shake(
          springController: springController,
          child: const FlutterLogo(),
          animDuration: Duration(milliseconds: 2000),
          start: 100,
          end: 30),
    );
  }
}
