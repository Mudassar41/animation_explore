import 'package:flutter/material.dart';

class AnimatedCrossFadeDemo extends StatefulWidget {
  const AnimatedCrossFadeDemo({super.key});

  @override
  State<AnimatedCrossFadeDemo> createState() => _AnimatedCrossFadeDemoState();
}

class _AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
  bool _first = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedCrossFade(
              firstCurve: Curves.fastOutSlowIn,
              secondCurve: Curves.easeIn,
              firstChild: InkWell(
                onTap: () {
                  setState(() {
                    _first = !_first;
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                ),
              ),
              secondChild: InkWell(
                onTap: () {
                  setState(() {
                    _first = !_first;
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.red),
                ),
              ),
              crossFadeState:
                  _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1))
        ],
      ),
    );
  }
}
