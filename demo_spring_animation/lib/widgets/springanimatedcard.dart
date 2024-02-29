import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class SpringAnimatedCard extends StatefulWidget {
  const SpringAnimatedCard({Key? key}) : super(key: key);
  @override
  State<SpringAnimatedCard> createState() => _SpringAnimatedCardState();
}

class _SpringAnimatedCardState extends State<SpringAnimatedCard> {
  final SpringController springController =
      SpringController(initialAnim: Motion.mirror);
  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;
    return Container(
      child: Spring.animatedCard(
        springController: springController,
        fromWidth: 10, // Adjust accordingly
        toWidth: 100, // Adjust accordingly
        widthDuration: const Duration(seconds: 1),
        fromHeight: 10, // Adjust accordingly
        toHeight: 100, // Adjust accordingly
        heightDuration: const Duration(seconds: 1),
        fromColor: Colors.blueAccent, //def=Colors.white
        toColor: Colors.redAccent, //def=Colors.white
        colorDuration: const Duration(seconds: 3), //def=1s
        fromElevation: 3, //def=10
        toElevation: 15, //def=10
        elevationDuration: const Duration(seconds: 4), //def=1s
        fromShadowColor: Colors.blue, //def=Colors.black
        toShadowColor: Colors.black, //def=Colors.black
        shadowDuration: const Duration(seconds: 2), //def=1s
        // animStatus: (AnimStatus staus) {
        //   print(staus);
        // },
        child: Icon(
          Icons.animation,
          color: Colors.white,
        ),
      ),
    );
  }
}
