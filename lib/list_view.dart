import 'package:flutter/material.dart';
class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (
     Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueAccent,
          title: const Text('Big Personalities'),
        ),

        body: SingleChildScrollView(
        child:
        Column(
          children: [
            ListTile(
              title: Text('Elon Mask'),
              subtitle:Text('Tesla') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),
            ListTile(
              title: Text('Bill Gates'),
              subtitle:Text('MicroSoft Technologies') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),
            ListTile(
              title: Text('Bill Gates'),
              subtitle:Text('MicroSoft Technologies') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),
            ListTile(
              title: Text('Bill Gates'),
              subtitle:Text('MicroSoft Technologies') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),
            ListTile(
              title: Text('Bill Gates'),
              subtitle:Text('MicroSoft Technologies') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),
            ListTile(
              title: Text('Bill Gates'),
              subtitle:Text('MicroSoft Technologies') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),
            ListTile(
              title: Text('Bill Gates'),
              subtitle:Text('MicroSoft Technologies') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),
            ListTile(
              title: Text('Bill Gates'),
              subtitle:Text('MicroSoft Technologies') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),   ListTile(
              title: Text('Bill Gates'),
              subtitle:Text('MicroSoft Technologies') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),   ListTile(
              title: Text('Bill Gates'),
              subtitle:Text('MicroSoft Technologies') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),   ListTile(
              title: Text('Bill Gates'),
              subtitle:Text('MicroSoft Technologies') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),   ListTile(
              title: Text('Bill Gates'),
              subtitle:Text('MicroSoft Technologies') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),   ListTile(
              title: Text('Bill Gates'),
              subtitle:Text('MicroSoft Technologies') ,
              leading: Icon(Icons.account_circle,color: Colors.blueAccent,size: 50,),
              trailing: Icon(Icons.delete_rounded),
            ),
          ],
        ),
      ),
    ));
  }
}
