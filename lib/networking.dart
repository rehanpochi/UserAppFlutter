import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:todo_app/user_model_list.dart';
import 'user_item.dart';
import 'user_model2.dart';
import 'dart:convert';

class Networking {

  int length=0;
  List<UserData> userss = [];


  Future<UserModell> createUser(int id, String name) async {
    // final String apiUrl='http://192.168.0.100:8090/todoAddd';
    String stringId = id.toString();
    var uri = Uri.parse('http://192.168.0.104:8080/user');
    final response = await http.post(uri, body: {
      "id": stringId,
      "name": name,
    });
    // final response =await http.post(apiUrl,body:{"name":name});
    print(response);
    print(response.body);
    final String responseString = response.body;
    print(response.statusCode);
    print(responseString);
    print(userModelFromJson(responseString));
    return userModelFromJson(responseString);
  }

  Future<UserModell> deleteUser(int? id) async {
    // final String apiUrl='http://192.168.0.100:8090/todoAddd';
    var uri = Uri.parse('http://192.168.0.104:8080/user/$id');
      //final response = await http.delete(uri, body: {"name": name});
      final response = await http.delete(uri);
      // final response =await http.post(apiUrl,body:{"name":name});


      print(response);
      print(response.body);
      final String responseString = response.body;
      print(response.statusCode);
      // print(responseString);
      // print(userModelFromJson(responseString));
      return userModelFromJson(responseString);
      //return responseString;

  }

  Future getData() async {
    var uri = Uri.http('192.168.0.104:8080', 'user');
    final response = await http.get(uri);
    print(response.body);
    print(response.statusCode);

    final String responseString = response.body;
    UserModell userModelListt = userModelFromJson(responseString);
    // print(userModelListt);
    // return responseString;
    print(userModelFromJson(responseString));
    return userModelFromJson(responseString);
  }

  Future getDataList() async {
    var uri = Uri.http('192.168.0.104:8080', 'user');
    final response = await http.get(uri);
    print(response.body);
    final String responseString = response.body;
    print(userModelListFromJson(responseString));
    print(json.decode(response.body));
    print(response.statusCode);
    var jsonData = json.decode(response.body);
    return (json.decode(response.body));
    //return userModelListFromJson(responseString);

    //return responseString;
  }

  Future getResponseCode() async {
    var uri = Uri.http('192.168.0.104:8080', 'user');
    final response = await http.get(uri);
    print(response.body);
    final String responseString = response.body;
    print(userModelListFromJson(responseString));
    print(json.decode(response.body));
    print(response.statusCode);
    var jsonData = json.decode(response.body);
    return response.statusCode;
    //return(json.decode(response.body));
    //return userModelListFromJson(responseString);

    //return responseString;
  }

  Future getUserDataNew() async {
    var uri = Uri.http('192.168.0.104:8080', 'user');
    var response = await http.get(uri);
    var jsonData = jsonDecode(response.body);
    List<UserData> userss = [];

    for (var u in jsonData) {
      UserData userr = UserData(u["id"], u["name"]);
      userss.add(userr);
    }
    length=userss.length;
    print(userss.length);
    return userss;
  }

  Future getUserDataNeww() async {
    var uri = Uri.http('192.168.0.104:8080', 'user');
    var response = await http.get(uri);
    var jsonData = jsonDecode(response.body);
   // List<UserData> userss = [];
    return jsonData;
  }



  Future createUserNew(int id, String name) async {
    // final String apiUrl='http://192.168.0.100:8090/todoAddd';
    String stringId = id.toString();
    var uri = Uri.parse('http://192.168.0.104:8080/user');
    var response = await http.post(uri, body: {
      "id": stringId,
      "name": name,
    });
    var jsonData=jsonDecode(response.body);
    UserData userr = UserData(jsonData["id"], jsonData["name"]);
    userss.add(userr);

    return jsonData;
  }

}

class UserData {
  final int id;
  final String name;

  UserData(this.id, this.name);
}