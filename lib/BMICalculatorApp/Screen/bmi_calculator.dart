import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

void main()=>runApp(BMICalculator());

class BMICalculator extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            thumbColor: Color(0xFFEB1555),
            overlayColor: Color(0x29EB1555),
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 10.0,
            ),
            overlayShape: RoundSliderOverlayShape(
              overlayRadius: 30.0,
            )
        ),
          scaffoldBackgroundColor: Color(0xFF0A0E21),

      ),
      home: InputPage(),
    );

  }
}





