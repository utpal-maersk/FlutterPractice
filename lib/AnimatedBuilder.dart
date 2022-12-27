import 'package:flutter/material.dart';
import 'dart:math';
class AnimatedBuildWidget extends StatefulWidget {
  const AnimatedBuildWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedBuildWidget> createState() => _AnimatedBuildWidgetState();
}

class _AnimatedBuildWidgetState extends State<AnimatedBuildWidget> with TickerProviderStateMixin{
  late final AnimationController _controller=  AnimationController(
    duration: Duration(seconds: 10),
      vsync: this,


  )..repeat();
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Builder Widget'),
      ),
      body:    Center(
        child:AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(angle: _controller.value *2.0*pi,
              child: child,
            );
          },
          child: FlutterLogo(
            size: 100,
          ),
        ) ,
      ),
    );

  }
}
