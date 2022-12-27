import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/BMICalculatorApp/Component/resuable_card.dart';

import '../Component/constant.dart';
import 'input_page.dart';
class ResultPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String interpretation;
  ResultPage({required this.bmiResult, required this.resultText, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('BMI Calculator',textAlign: TextAlign.center),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text('Your Result',style: kFontTitleStyle,textAlign: TextAlign.center,),
                ),
              ),
          ),
          Expanded(
            flex:5 ,
            child: ReuseableCard(cardChild:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Text(resultText.toUpperCase(),style: kResultTextStyle,),
                Text(bmiResult,style: kBMITextStyle,),
                Text(interpretation,style: kBMIResultInterPretationStyle,
                textAlign: TextAlign.center,)
              ],
            ), color: kInActiveColor,),
          ),
          GestureDetector(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
              Navigator.pop(context);
            },
            child: Container(

              color:kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              child: Center(
                child: Text('Re-Calculate BMI',style: TextStyle(
                  fontSize: 20,

                ),),


              ),
              height: kButtomContainerHeight,
            ),
          ),
          ]
      ),
    );
  }

}
