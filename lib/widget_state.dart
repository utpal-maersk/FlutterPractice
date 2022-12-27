import 'package:flutter/material.dart';

class Statelesswidget extends StatelessWidget {
  const Statelesswidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hi "),
            Center(
              child: ElevatedButton(onPressed: () {
                print('clicked');
              },
              child: Text('Press me'),),
            ),
          ],
        ),

    )
    );
  }
}
