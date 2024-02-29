import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class SpringScale extends StatefulWidget {
  const SpringScale({Key? key}) : super(key: key);
  @override
  State<SpringScale> createState() => _SpringScaleState();
}

class _SpringScaleState extends State<SpringScale> {
  final SpringController springController =
      SpringController(initialAnim: Motion.mirror);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Spring.scale(
        springController: springController,
        start: 0.0, //required
        end: 1.0, //required
        animDuration: const Duration(milliseconds: 1000), //def=1s,
        // animStatus: (AnimStatus status) {
        //   print(status);
        // },
        curve: Curves.bounceOut, //def=Curves.easeInOut
        child: const FlutterLogo(),
      ),
    );
  }
}
