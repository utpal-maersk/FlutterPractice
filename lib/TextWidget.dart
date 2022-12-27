import 'package:flutter/material.dart';
class Textwidget extends StatelessWidget {
  const Textwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Chip(
              label: Text('hello',style: TextStyle(
               color: Colors.teal,
               fontWeight: FontWeight.bold,
              ),),
            )),
      ),
    );
  }
}
