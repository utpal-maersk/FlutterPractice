import 'package:flutter/material.dart';
class MyStateFullScreen extends StatefulWidget {
  String username;
  MyStateFullScreen({Key? key,this.username="Jeff bejos"}) : super(key: key);

  @override
  State<MyStateFullScreen> createState() => _MyStateFullScreenState();
}

class _MyStateFullScreenState extends State<MyStateFullScreen> {
  List<String>names=['Elon','Bill','Mark'];
  Color col=Colors.purple;
  int i=0;
  String ?name;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Init state');
    this.name=widget.username;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('StateFull widget $name'),
        ),
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.redAccent,
          backgroundColor: col,

          child:
          Icon(Icons.color_lens),
               onPressed: () {

            setState(() {
              col=Colors.black;

            });
          },

        ),
        body:Center(

          child: Column(

            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text('My name is ${names[i]}'),
              ElevatedButton(onPressed: (){
                if(i< names.length -1){
                  setState(() {
                    i++;
                  });

                }

              }, child: Text('Next')),
              ElevatedButton(onPressed: () {
                if (i !=0 ) {
                  setState(() {
                    i--;
                  });
                }
              }, child: Text('Go Back')),

            ],

          ),
        )
      ),
    );
  }
}
