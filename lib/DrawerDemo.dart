import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/PassingData.dart';
class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:AppBar(
           title: Text('Drawer Demo'),),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(title: Text('Profile'),leading: Icon(Icons.account_box),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PassingData()));
              },),
              ListTile(title: Text('Home'),leading: Icon(Icons.home),),
              ListTile(title: Text('Result'),leading: Icon(Icons.receipt),),
              ListTile(title: Text('Setting'),leading: Icon(Icons.settings),),
              ListTile(title: Text('Review'),leading: Icon(Icons.reviews),),
              ListTile(title: Text('More'),leading: Icon(Icons.more),),

            ],
          ),
        ),

    );
  }
}
