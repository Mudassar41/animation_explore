import 'package:animatios_demo/animations/animated_cross_fade.dart';
import 'package:flutter/material.dart';

import 'animations/animated_physical_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  AnimatedPhysicalModalWidget());
  }
}
