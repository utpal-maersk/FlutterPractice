import 'package:flutter/material.dart';
class widgetstateful extends StatefulWidget {
  const widgetstateful({Key? key}) : super(key: key);

  @override
  State<widgetstateful> createState() => _widgetstatefulState();
}

class _widgetstatefulState extends State<widgetstateful> {

  @override
  void initState() {
    super.initState();
    print('i was stated');
  }
  String str='hello to change';
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://picsum.photos/250?image=9'),
              Chip(label: Text(str)),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: ElevatedButton(onPressed: () {
                  str='hi !! your state change !!';
                  setState(() {

                  });
                },
                    child: ( const Text('click me to show change'))),
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
