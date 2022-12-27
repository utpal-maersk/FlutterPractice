import 'package:flutter/material.dart';
class Column_Row_Widget extends StatelessWidget {
  const Column_Row_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text ('Column and Row') ,
         ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.rtl,
            children: [
              Text('Hello'),
              ElevatedButton(onPressed: () => 
                  print("object"),
                  child: Text('Press Me !!')),
              Image.network('https://picsum.photos/250?image=9'),
            ],


          ),
        ),

    );
  }
}
