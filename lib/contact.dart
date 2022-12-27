import 'package:flutter/material.dart';
class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  String name ='Guest';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('StateFull Widget'),

        ),
        body: Column(
          children: [
            TextField(
              onChanged: (value){
                name=value;
                setState(() {

                });

              },

            ),
            Text('Hello $name'),


          ],
        ),


    );
  }
}
