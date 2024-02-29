import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class SpringBuble extends StatefulWidget {
  const SpringBuble({Key? key}) : super(key: key);
  @override
  State<SpringBuble> createState() => _SpringBubleState();
}

class _SpringBubleState extends State<SpringBuble> {
  final SpringController springController =
      SpringController(initialAnim: Motion.mirror);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Spring.bubbleButton(
        springController: springController,
        //optional can use gesture detector
        animDuration: Duration(seconds: 1), //def=500m mil
        bubbleStart: .3, //def=0.0
        bubbleEnd: 1.0, //def=1.1
        curve: Curves.easeOut, //Curves.elasticOut
        delay: Duration(milliseconds: 100), //def=0
        child: FlutterLogo(),
      ),
    );
  }
}
