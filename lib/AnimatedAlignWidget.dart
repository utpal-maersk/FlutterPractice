import 'package:flutter/material.dart';
class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  bool selected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Aligment Wodget'),
      ),
      body: (
          GestureDetector(
        onTap: (){
          setState(() {
            selected=!selected;

          });

        },
        child: Center(
          child: Container(
            width: double.infinity,
            height: 250,
            color: Colors.blueGrey,
            child:
            AnimatedAlign(
              alignment:selected? Alignment.topRight:Alignment.bottomLeft,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(size: 50),
            ),
          ),
        ),
      )),
    );

  }
}
