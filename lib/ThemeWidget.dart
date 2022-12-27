import 'package:flutter/material.dart';

import 'main.dart';
class ThemeWidget extends StatelessWidget {
  const ThemeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
         brightness: Brightness.light,
         primaryColor: Colors.teal,
         accentColor: Colors.redAccent,
         fontFamily: 'Monotype Coursiva',
         textTheme: TextTheme(
            headlineLarge:  TextStyle(fontSize: 32.0, fontStyle: FontStyle.italic, fontFamily: 'Hind'),
         )

       ),
      home: MyHomeTheme(),
    );
  }
}

class MyHomeTheme extends StatelessWidget {
  const MyHomeTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Theme Example'),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).primaryColor,
          child:
          Text('Themes contains the graphical appearances that makes the user interface more attractive.',
            style: Theme.of(context).textTheme.headlineLarge,
          ),

        ),
      ),
    floatingActionButton: Theme(
    data: Theme.of(context).copyWith(
    colorScheme:
    Theme.of(context).colorScheme.copyWith(secondary: Colors.blue),
    ), child: FloatingActionButton(
      child: Icon(Icons.arrow_back),
      onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp())),
    )
      ,
    ));
  }
}

