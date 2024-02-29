import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class SpringTranslate extends StatefulWidget {
  const SpringTranslate({Key? key}) : super(key: key);
  @override
  State<SpringTranslate> createState() => _SpringTranslateState();
}

class _SpringTranslateState extends State<SpringTranslate> {
  final SpringController springController =
      SpringController(initialAnim: Motion.mirror);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Spring.translate(
        springController: springController,
        beginOffset: Offset(-150, 100), //required
        endOffset: Offset(0, 0), //required
        animDuration: Duration(seconds: 2), //def=1s
        curve: Curves.bounceInOut, //def=Curves.easInOut
        delay: Duration(seconds: 1), //def=0
        child: const FlutterLogo(),
      ),
    );
  }
}
