import 'package:flutter/material.dart';


class AnimatedSwitcherDemo extends StatefulWidget {
  const AnimatedSwitcherDemo({super.key});

  @override
  State<AnimatedSwitcherDemo> createState() => _AnimatedSwitcherState();
}

class _AnimatedSwitcherState extends State<AnimatedSwitcherDemo> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                child: child,
                scale: animation,
              );
            },
            child: Text(
              counter.toString(),
              key: ValueKey<String>(counter.toString()),
              style: TextStyle(fontSize: 45, color: Colors.black),
            ),
          ),

          TweenAnimationBuilder(
            child: Container(
              width: 60,
              height: 100,
              color: Colors.blueAccent,
            ),
            duration: Duration(milliseconds: 1000),
            curve: Curves.bounceOut,
            tween: Tween(begin: 1.0, end: 0.0),
            builder: (context, value, child){
              return Transform.translate(
                offset:  Offset(
                    0.0,
                    value * 100
                ),
                child: child,
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: Text('Count'))
        ],
      ),
    );
  }
}
