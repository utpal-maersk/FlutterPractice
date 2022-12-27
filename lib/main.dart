
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/AnimatedCrossFadeWidget.dart';
import 'package:flutter_ui_kit/GridViewWidget.dart';
import 'package:flutter_ui_kit/SecondScreen.dart';
import 'package:flutter_ui_kit/BMICalculatorApp/Screen/bmi_calculator.dart';
import 'package:flutter_ui_kit/widget_Stateful.dart';
import 'package:flutter_ui_kit/widget_state.dart';

import 'AlertDialog.dart';
import 'AnimatedAlignWidget.dart';
import 'AnimatedBuilder.dart';
import 'AnimatedContainer.dart';
import 'DrawerDemo.dart';
import 'HandlingUserInput.dart';
import 'PassingData.dart';
import 'PracticeStateful.dart';
import 'Scaffold_App_widget.dart';
import 'TextWidget.dart';
import 'ThemeWidget.dart';
import 'app_http_call.dart';
import 'column_row_widget.dart';
import 'contact.dart';
import 'firstScreen.dart';
import 'list_view.dart';


void main() => runApp(
    MaterialApp(
    title: "App",
    home: MyApp(),
    //     initialRoute: '/',
    //   routes: {
    //   '/':(context)=>FirstScreen(),
    //     '/contact':(context)=>Contact(),
    //     //'/second':(context)=>SecondScreen(),


  ));
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,

      appBar: AppBar(
        title: Text('Flutter UI KIT'),
        backgroundColor: Colors.teal,
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: (
            ListView(

              children: [
                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AlertDialogWidget()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Alert Widget'),),
                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimatedAlignWidget()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Animated Alignment Widget'),),

                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimatedBuildWidget()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Animated Builder widget'),),

                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimationContainerWidget()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Animation Container widget'),),
                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AnimatedCrossFadeWidget()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Animation Cross Fade widget'),),

                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewDemo()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('List View Widget'),),

                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DrawerDemo()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Drawer Widget'),),

                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstScreen()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Buttom Navigation Widget'),),
                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Scaffold_App_Widget()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Scaffold Widget'),),

                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Column_Row_Widget()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Column Row widget'),),
                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GrideViewWidget()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Gride view widget'),),

                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ThemeWidget()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Theme widget'),),

                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HandlingUserInput()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Handling User Input'),),

                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AppHttpCall()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('Http Call'),),

                ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BMICalculator()));
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                  child: Text('BMI Calculator'),),
              ],
            )
        ),
      ),
    );


  }
}






