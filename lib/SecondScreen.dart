import 'package:flutter/material.dart';

import 'contact.dart';
class SecondScreen extends StatelessWidget {
  String name ;
  int roll;
  dynamic pocketmoney;
  static String id="/second";
  //const SecondScreen({Key? key}) : super(key: key);
  SecondScreen(this.name, this.roll,{this.pocketmoney});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Second screen'),
        ),
      body: Center(
        child: ElevatedButton(onPressed:() {
          //Navigator.push(context,MaterialPageRoute(builder: (context)=>Contact()));
          Navigator.pushNamed(context, '/contact');
         // Navigator.pop(context);
        }, child: Text("${name},${roll}"),

      ),

    ));
  }

}
