import 'package:flutter/material.dart';
class WelcomeData extends StatefulWidget {
  String name,email,phone;


  WelcomeData({required this.name, required this.email, required this.phone});

  @override
  State<WelcomeData> createState() => _WelcomeDataState();
}

class _WelcomeDataState extends State<WelcomeData> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name: ${widget.name}'),
              Text('Email: ${widget.email}'),
              Text('Mobile: ${widget.phone}'),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("Return Back"))

            ],
          ),
        ),
    )
    );

  }
}

