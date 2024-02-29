import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class SpringRotate extends StatefulWidget {
  const SpringRotate({Key? key}) : super(key: key);
  @override
  State<SpringRotate> createState() => _SpringRotateState();
}

class _SpringRotateState extends State<SpringRotate> {
  final SpringController springController =
      SpringController(initialAnim: Motion.mirror);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Spring.rotate(
        springController: springController,
        alignment: Alignment.bottomCenter, //def=center
        startAngle: 30, //def=0
        endAngle: 250, //def=360
        animDuration: Duration(seconds: 2), //def=1s
        curve: Curves.easeInBack, //def=Curves.easInOut
        child: const FlutterLogo(),
      ),
    );
  }
}
