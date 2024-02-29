import 'package:demo_spring_animation/widgets/springanimatedcard.dart';
import 'package:demo_spring_animation/widgets/springblink.dart';
import 'package:demo_spring_animation/widgets/springbuble.dart';
import 'package:demo_spring_animation/widgets/springfadeinout.dart';
import 'package:demo_spring_animation/widgets/springflip.dart';
import 'package:demo_spring_animation/widgets/springopacity.dart';
import 'package:demo_spring_animation/widgets/springpop.dart';
import 'package:demo_spring_animation/widgets/springrotate.dart';
import 'package:demo_spring_animation/widgets/springscale.dart';
import 'package:demo_spring_animation/widgets/springshake.dart';
import 'package:demo_spring_animation/widgets/springslide.dart';
import 'package:demo_spring_animation/widgets/springtranslate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.blue,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Color(0xFF4169E1),
          ),
          title: const Text(
            'Spring Demo',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 33, 96),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: const EdgeInsets.all(20),
          children: [
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: SpringAnimatedCard(),
                ),
                Text('Animated Card'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: SpringSlide(),
                ),
                Text('Slide'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: SpringScale(),
                ),
                Text('Scale'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: SpringFlip(),
                ),
                Text('Flip'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: SpringFadeInOut(),
                ),
                Text('Fade In-Out'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: SpringOpacity(),
                ),
                Text('Opacity'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: SpringBuble(),
                ),
                Text('Buble'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: SpringBlink(),
                ),
                Text('Blink'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: SpringPop(),
                ),
                Text('Pop'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: SpringShake(),
                ),
                Text('Shake'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: SpringRotate(),
                ),
                Text('Rotate'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: SpringTranslate(),
                ),
                Text('Translate'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
