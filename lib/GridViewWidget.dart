import 'package:flutter/material.dart';
class GrideViewWidget extends StatefulWidget {
  const GrideViewWidget({Key? key}) : super(key: key);

  @override
  State<GrideViewWidget> createState() => _GrideViewWidgetState();
}

class _GrideViewWidgetState extends State<GrideViewWidget> {
  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"




  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gride view'),
      ),
      body: Center(
      child: GridView.extent(
      primary: false,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      maxCrossAxisExtent: 200.0,
      children: <Widget>[
      Container(
      padding: const EdgeInsets.all(8),
      child: const Text('First', style: TextStyle(fontSize: 20)),
      color: Colors.yellow,
      ),
      Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Second', style: TextStyle(fontSize: 20)),
    color: Colors.blue,
    ),
    Container(
    padding: const EdgeInsets.all(8),
    child: const Text('Third', style: TextStyle(fontSize: 20)),
    color: Colors.blue,
    ),
    Container(
    padding: const EdgeInsets.all(8),
    child: const Text('Four', style: TextStyle(fontSize: 20)),
    color: Colors.yellow,
    ),
    Container(
    padding: const EdgeInsets.all(8),
    child: const Text('Fifth', style: TextStyle(fontSize: 20)),
    color: Colors.yellow,
    ),
    Container(
    padding: const EdgeInsets.all(8),
    child: const Text('Six', style: TextStyle(fontSize: 20)),
    color: Colors.blue,
    ),
    ],
    ),
    ));
  }
}
