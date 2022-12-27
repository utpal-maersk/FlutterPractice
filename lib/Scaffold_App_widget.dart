import 'package:flutter/material.dart';
class Scaffold_App_Widget extends StatelessWidget {
  const Scaffold_App_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.blueAccent ,
          title: Text("This is a widget App bar"),
          actions: [
            Icon(Icons.mic),
          ],
          //elevation: 0.0,

        ),
        backgroundColor: Colors.white,
        body: Center(
            child: Text('hello'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon:Icon( Icons.home),label: ('Home'),backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(icon:Icon( Icons.reviews),label: ('Review')),
            BottomNavigationBarItem(icon:Icon( Icons.settings),label: ('Setting')),
            BottomNavigationBarItem(icon:Icon( Icons.more),label: ('More')),

          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.blueAccent,
          child: ListView(

             children: [
              DrawerHeader(child: Text('Menu')),
               ListTile(title: Text('Profile',)),
               ListTile(title: Text('My info',)),
               ListTile(title: Text('My Map',)),
               ListTile(title: Text('My booking',)),

             ],
          )



        ),

    );
  }
}
