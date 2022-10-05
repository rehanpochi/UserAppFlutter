import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:todo_app/user_model_list.dart';
import 'user_item.dart';
import 'home.dart';
import 'user_model2.dart';


void main() {
  runApp(const Home());
}


// Future postData() async {
//   var uri = Uri.parse('http://192.168.0.102:8080/todo');
//   var response = await http.post(uri, body: {"name": " Go to park"});
//   //var decodedData = jsonDecode(response.body);
//   // print(decodedData);
//   //   var lastPrice = decodedData['rate'];
//   //return decodedData;
//   print(response);
//   //  var decodedData = jsonDecode(response.body);
//   //var decodedData = json.decode(response.body);
//   //
//   //  print(decodedData);
//   print(response.body);
//   print(response.statusCode);
//   return response;
//   //Handle any errors that occur during the request.
//   return response.statusCode;
//   print(response.body);
// }
