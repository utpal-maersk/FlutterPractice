import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/BMICalculatorApp/Component/resuable_card.dart';
import 'package:flutter_ui_kit/BMICalculatorApp/Screen/result_page.dart';
import 'package:flutter_ui_kit/BMICalculatorApp/calculator_brain.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Component/constant.dart';
import '../Component/icon_content.dart';
import '';

enum Gender{male,female}



class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  // Color maleCardColor=inActiveColor;
  // Color femaleCardColor=inActiveColor;
  Gender ? genderSelected;
  int height=180;
  int weight=20;
  int age=18;

  @override
  Widget build(BuildContext context) {

   //Color(0xFF111328);


   // void updateColor(Gender selectedGender){
   //
   //
   //   if (selectedGender==Gender.male) {
   //    if (maleCardColor == inActiveColor) {
   //      maleCardColor = activeColor;
   //      femaleCardColor=inActiveColor;
   //
   //    } else {
   //      maleCardColor = inActiveColor;
   //    }
   //  }else if(selectedGender==Gender.female){
   //    if(femaleCardColor==inActiveColor){
   //      femaleCardColor=activeColor;
   //      maleCardColor = inActiveColor;
   //
   //    }else{
   //      femaleCardColor=inActiveColor;
   //    }
   //  }
   // }

    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
          children: [
            Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  genderSelected=Gender.male;
                });
              },
              child: ReuseableCard(cardChild:
              IconContent(
                icon: FontAwesomeIcons.mars,
                label: 'MALE'),
                color: genderSelected==Gender.male?kActiveColor:kInActiveColor,),
            )
              ,),
            Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  genderSelected=Gender.female;
                });
              },
              child: ReuseableCard(
                cardChild:IconContent(
                  icon: FontAwesomeIcons.venus,
                  label: 'FEMALE',),
              color: genderSelected==Gender.female ? kActiveColor:kInActiveColor,),
            ),
            ),
          ],
          ),
          ),
          Expanded(
            child: ReuseableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT',style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,

                    children: [
                      Text(height.toString(),style: kFontTextStyle),
                      Text('cm',style: kFontTextStyle,),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 10.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      )
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      //activeColor: Color(0x29EB1555),
                      onChanged: (double newValue){
                        setState(() {
                          height=newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
              color: kInActiveColor,
              
              
            ),
              ),
          Expanded(
            child: Row(
              children: [
              Expanded(child: ReuseableCard(cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Weight',style: kLabelTextStyle,),
                  Text(weight.toString(),style: kFontTextStyle,),
                  Row(
                    children: [
                      RoundIconButton(icon: FontAwesomeIcons.minus, onTap: (){
                        setState(() {
                          if (weight>0)
                          weight--;
                        });
                      },),
                      SizedBox(width: 60,),
                      RoundIconButton(icon: FontAwesomeIcons.add, onTap: (){
                        setState(() {
                          weight++;
                        });
                      },),
              ]
                  ),

                ],
              ), color: kActiveColor,)),
              Expanded(child: ReuseableCard(cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text('Age',style: kLabelTextStyle,),
                  Text(age.toString(),style: kFontTextStyle,),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                        children: [
                          RoundIconButton(icon: FontAwesomeIcons.minus,
                            onTap: (){
                            setState(() {
                              if (age>0) {
                                age--;
                              }
                            });
                          },),
                          SizedBox(width: 60,),
                          RoundIconButton(icon: FontAwesomeIcons.add,
                            onTap: (){
                            setState(() {
                              age++;
                            });

                          },),
                        ]
                    ),
                  ),
                ],
              ), color: kActiveColor,)),

            ],
          ),),
          GestureDetector(
            onTap: (){
              CalculatorBrain calc=CalculatorBrain(height: height, weight: weight);

              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
                 bmiResult: calc.calculateBMI(),
                resultText: calc.getResult(),
                interpretation: calc.getInterpretation(),
              )));
            },
            child: Container(

              color:kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: Center(
                child: Text('CALCULATE',style: TextStyle(
                  fontSize: 20,

                ),),


              ),
              height: kButtomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;
   RoundIconButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(

        fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 40.0,height: 56.0),
      shape:CircleBorder(),
    onPressed: () {
    onTap();
    });
     // fillColor: Color(0xFF4C4F5E),

  }
}




