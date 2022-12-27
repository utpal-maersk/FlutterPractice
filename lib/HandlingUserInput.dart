import 'package:flutter/material.dart';
class HandlingUserInput extends StatefulWidget {

  @override
  State<HandlingUserInput> createState() => _HandlingUserInputState();
}

class _HandlingUserInputState extends State<HandlingUserInput> {
  TextEditingController _controller=TextEditingController();
  Pattern pattern =
      r'\+994\s+\([0-9]{2}\)\s+[0-9]{3}\s+[0-9]{2}\s+[0-9]{2}';
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Handling User Input'),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child:Form(
              key: formKey,
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
               height:20,),
                Text("Here to Get",style: TextStyle(fontSize: 20,color: Colors.black54),),
                Text("Welcome !!",style: TextStyle(fontSize: 20,color: Colors.black54),),
                SizedBox(height: 50,),
                TextFormField(
                  decoration:InputDecoration(
                    labelText:'Name'
                  ) ,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Name is empty";
                    }else{
                      return null;
                    }
                  }
                ),

                SizedBox(height: 50,),
                TextFormField(
                    decoration:InputDecoration(
                        labelText:'Mobile number'
                    ) ,
                    validator: (value){
                      RegExp regex = new RegExp('$pattern');

                      if(value!.isEmpty){
                        return "Enter correct Mobile no";
                      }else{
                        return null;
                      }
                    }
                ),
                SizedBox(height: 50,),
                TextFormField(
                    decoration:InputDecoration(
                        labelText:'Email Address'
                    ) ,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Enter correct Mobile no";
                      }else{
                        return null;
                      }
                    }
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: FloatingActionButton(onPressed: () {
                          if(formKey.currentState!.validate()){
                            final snakeBar=SnackBar(content: Text('Submitted Successfully,We will get back to you soon!!'));
                            ScaffoldMessenger.of(context).showSnackBar(snakeBar);
                          }
                          },
                          child: Text('SignUp',style: TextStyle(
                            fontSize: 10,
                          )),
                    ),
                        ),

                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
    ),
      ));
  }
}
