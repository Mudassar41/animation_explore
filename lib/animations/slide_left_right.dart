import 'package:flutter/material.dart';

class BottomToTopAnimation extends StatefulWidget {
  const BottomToTopAnimation({Key? key}) : super(key: key);

  @override
  _BottomToTopAnimationState createState() => _BottomToTopAnimationState();
}

class _BottomToTopAnimationState extends State<BottomToTopAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(0.3, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          clipBehavior: Clip.antiAlias,

          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.yellow,
          ),
          child: SlideTransition(
              position: _animation,
              child: const Text("Mudassar Maqbool")// Your widget to animate goes here,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}



