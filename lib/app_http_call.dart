import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'model/image_model.dart';
import 'dart:convert';
class AppHttpCall extends StatefulWidget {
  const AppHttpCall({Key? key}) : super(key: key);

  @override
  State<AppHttpCall> createState() => _AppHttpCallState();
}

class _AppHttpCallState extends State<AppHttpCall> {
  int counter=0;
  List<ImageModel>images=[];

  Future<void> fetchImages() async {
    counter++;
    var result =await get('https://jsonplaceholder.typicode.com/photos/$counter' as Uri);
    var imageModel=new ImageModel.fromJson(json.decode(result.body));
    setState(() {
      images.add(imageModel);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http Call Demo'),
      ),
      body:Text('Demo for Http call for images'),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImages,
        child: Text('Images'),
      ),
    );
  }
}
