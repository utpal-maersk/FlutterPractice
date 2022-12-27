import 'dart:async';
Future<void> main() async {
  print('About to get data');
  var result=await get('http://www.google.com');
  print(result);

}

Future<String>get(String url){
 return Future.delayed(new Duration(seconds: 10),() {
   return 'Got data';
 },);



}




//ImageModel.fromJson(this.id, this.url);
