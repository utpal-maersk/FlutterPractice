import 'package:flutter/material.dart';
class AnimationContainerWidget extends StatefulWidget {
  const AnimationContainerWidget({Key? key}) : super(key: key);

  @override
  State<AnimationContainerWidget> createState() => _AnimationContainerWidgetState();
}

class _AnimationContainerWidgetState extends State<AnimationContainerWidget> {
  bool selected=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Container'),
      ),
      body:
        GestureDetector(
          onTap:() {
            setState(() {
              selected=!selected;
            });
          },
          child: Center(
            child: AnimatedContainer(
              width: selected?100:200,
              height: selected?200:100,
              color: selected?Colors.blueGrey:Colors.white,
              alignment:
              selected ?Alignment.center:AlignmentDirectional.topCenter,
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(size: 50,),
              duration: Duration(seconds: 10),

            ),
          ),

        ),
    );

  }
}
