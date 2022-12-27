import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/WelcomeData.dart';
class PassingData extends StatefulWidget {
  const PassingData({Key? key}) : super(key: key);

  @override
  State<PassingData> createState() => _PassingDataState();
}

class _PassingDataState extends State<PassingData> {
  TextEditingController _name=new TextEditingController();
  TextEditingController _email=new TextEditingController();
  TextEditingController _phone=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Passing Data'),
        ),
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Enter the Details Below ",style: TextStyle(
                fontSize: 20
              ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _name,
                  decoration: InputDecoration(
                    label: Text('Enter Name'),
                    border: OutlineInputBorder(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    label: Text('Enter Email'),
                    border: OutlineInputBorder(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _phone,
                  decoration: InputDecoration(
                    label: Text('Enter Phone'),
                    border: OutlineInputBorder(),

                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeData(name: _name.text, email: _email.text, phone: _phone.text)));

              }, child: Text('Go to Welcome Page'))
            ],

          ),
        ),

    );
  }
}
