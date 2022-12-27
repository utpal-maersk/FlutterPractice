import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/SecondScreen.dart';
import 'package:flutter_ui_kit/contact.dart';

import 'PassingData.dart';
import 'TextWidget.dart';
class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String name ="utpal";

  int roll=40;

  int _index=0;

  List pages=[
    Contact(),
    SecondScreen('utpal', 100),
    Textwidget()
  ] ;

 // const FirstScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('My First Screen'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text('Utpal Bura Gohain'), accountEmail: Text('info2utpal@gmail.com'),
          currentAccountPicture:CircleAvatar(child: Icon(Icons.account_box), )),
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
         body:
    //Center(
        //   // child: ElevatedButton(onPressed:() {
        //   //   //push
        //   //   //Navigator.push(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
        //   //   Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(name, roll)));
        //   //  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>SecondScreen()));
        //   //
        //   // },
        //   //   child: Text('Go to second screen'),)
        // ),
          pages[_index],


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_phone),label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.camera),label: 'Camera'),

        ],
        onTap: (index){
          print(index);
          setState(() {
           _index= index;
          });
        }

      ),
      );


  }
}
