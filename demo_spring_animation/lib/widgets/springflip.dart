import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class SpringFlip extends StatefulWidget {
  const SpringFlip({Key? key}) : super(key: key);
  @override
  State<SpringFlip> createState() => _SpringFlipState();
}

class _SpringFlipState extends State<SpringFlip> {
  final SpringController springController =
      SpringController(initialAnim: Motion.mirror);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Spring.flip(
        springController: springController,
        frontWidget: Container(
          color: Colors.red,
        ), //required
        rearWidget: FlutterLogo(
          size: 120,
        ), //required
        flipAxis: Axis.vertical, //def=Axis.horizantal
        onTap: (side) {
          //only Motion.play and anim Duration are accepted here.
          springController.play();
          // print(side); //front or rear
        },
        //you can disable flip on click
        toggleOnClick: false, //def=true
        animDuration: Duration(milliseconds: 600), //def=1s
      ),
    );
  }
}
