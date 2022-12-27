import 'package:flutter/material.dart';
class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({Key? key}) : super(key: key);

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title:Text('Dialog Alert'),

        ),

      body: Center(
        child: ElevatedButton(onPressed: () {
          showDialog(context: context, builder: (context)=>AlertDialog(
            title: Text('This is Flutter Mapp'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Close')),
            ],
          ),
          );
        },
          child:Text('Show Dialog'),
        ),
      ),
    );

  }
}
