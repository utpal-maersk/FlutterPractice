import 'package:flutter/material.dart';
class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeWidget> createState() => _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _bool=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Cross Fade Container'),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
            ),
            TextButton(onPressed: (){
              setState(() {
                _bool=!_bool;
              });
            }, child: Text(
              'Switch',
              style: TextStyle(
                  color: Colors.blueAccent
              ),
            )),
            AnimatedCrossFade(
              firstChild: Image.network('https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',width: double.infinity,
              ),

              secondChild: Image.network('https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',width: double.infinity,),
              crossFadeState: _bool?CrossFadeState.showFirst:CrossFadeState.showSecond,
              duration: Duration(seconds: 2),
            ),
          ],
        ),
      )
    );

  }
}
