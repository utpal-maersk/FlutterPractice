import 'package:flutter/material.dart';
class AutocompleteWidget extends StatelessWidget {
  const AutocompleteWidget({Key? key}) : super(key: key);
  static List<String>Item=[
   'apple',
    'banana',
    'melon'
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete(optionsBuilder: (TextEditingValue textEditingValue){
      if(textEditingValue.text==''){
        return Iterable<String>.empty();
      }
      return Item.where((String element) {
       return Item.contains(textEditingValue.text.toLowerCase());

      },


      );

    }

    );
  }
}
