import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:todo_app/user_model_list.dart';
import 'user_item.dart';
import 'user_model2.dart';
import 'dart:convert';
//import 'JsonModel.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;


class Networking {
  String dataString='';
  int length = 0;

  Future<String> loadAsset() async {
    dataString= await rootBundle.loadString('assests/jsonFile.txt');
    return dataString;
  }


  Future createUserxyz() async {
    var uri = Uri.parse('http://192.168.0.109:8080/json1');
    String data = """
    {
  "models": [
    {
      "edges": [
        {
          "id": "e5756858-6650-4e3c-91f1-0ae109502730",
          "name": "e_correctPin",
          "sourceVertexId": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5",
          "targetVertexId": "e1dc7056-e2b2-43c2-9684-0d33b5bcec2e"
        },
        {
          "id": "f6479bf0-b300-4890-886f-e082db6d117b",
          "name": "e_incorrect",
          "sourceVertexId": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5",
          "targetVertexId": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5"
        },
        {
          "id": "3d400628-0bd8-4aae-9954-85cd3ecee2d5",
          "name": "e_logout",
          "sourceVertexId": "e1dc7056-e2b2-43c2-9684-0d33b5bcec2e",
          "targetVertexId": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5"
        }
      ],
      "generator": "random(edge_coverage(100))",
      "id": "2c270a60-f5d7-4ab7-a44b-f71be8a38a4e",
      "name": "state Diagram 2",
      "startElementId": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5",
      "vertices": [
        {
          "id": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5",
          "name": "login_page",
          "properties": {
            "x": 252,
            "y": 191
          }
        },
        {
          "id": "e1dc7056-e2b2-43c2-9684-0d33b5bcec2e",
          "name": "home_page",
          "properties": {
            "x": 576,
            "y": 184
          }
        }
      ],
      "editor": {
        "elements": {
          "nodes": [
            {
              "data": {
                "id": "e1dc7056-e2b2-43c2-9684-0d33b5bcec2e",
                "name": "home_page",
                "color": "LightGreen"
              },
              "position": {
                "x": 566,
                "y": 232
              },
              "group": "nodes",
              "removed": false,
              "selected": false,
              "selectable": true,
              "locked": false,
              "grabbable": true,
              "pannable": false,
              "classes": ""
            },
            {
              "data": {
                "id": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5",
                "name": "login_page",
                "color": "LightGreen"
              },
              "position": {
                "x": 221,
                "y": 229
              },
              "group": "nodes",
              "removed": false,
              "selected": true,
              "selectable": true,
              "locked": false,
              "grabbable": true,
              "pannable": false,
              "classes": ""
            }
          ],
          "edges": [
            {
              "data": {
                "id": "e5756858-6650-4e3c-91f1-0ae109502730",
                "name": "correct pin",
                "source": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5",
                "target": "e1dc7056-e2b2-43c2-9684-0d33b5bcec2e",
                "color": "LightGreen"
              },
              "position": {
                "x": 0,
                "y": 0
              },
              "group": "edges",
              "removed": false,
              "selected": false,
              "selectable": true,
              "locked": false,
              "grabbable": true,
              "pannable": true,
              "classes": ""
            }
          ]
        },
        "style": [
          {
            "selector": "core",
            "style": {
              "active-bg-size": "0px"
            }
          },
          {
            "selector": "node",
            "style": {
              "label": "data(name)",
              "text-wrap": "wrap",
              "text-valign": "center",
              "text-halign": "center",
              "shape": "roundrectangle",
              "width": "label",
              "height": "label",
              "color": "rgb(0,0,0)",
              "background-color": "data(color)",
              "line-color": "data(color)",
              "padding": "10px"
            }
          },
          {
            "selector": "edge",
            "style": {
              "label": "data(name)",
              "text-wrap": "wrap",
              "curve-style": "bezier",
              "text-rotation": "autorotate",
              "target-arrow-shape": "triangle",
              "width": "4px",
              "line-color": "data(color)",
              "target-arrow-color": "data(color)",
              "background-color": "data(color)"
            }
          },
          {
            "selector": ":loop",
            "style": {
              "curve-style": "unbundled-bezier",
              "control-point-step-size": "60px"
            }
          },
          {
            "selector": ":selected",
            "style": {
              "border-width": "4px",
              "border-color": "rgb(0,0,0)",
              "line-color": "rgb(0,0,0)",
              "target-arrow-color": "rgb(0,0,0)"
            }
          }
        ],
        "data": {},
        "zoomingEnabled": true,
        "userZoomingEnabled": true,
        "zoom": 1,
        "minZoom": 1e-50,
        "maxZoom": 1e+50,
        "panningEnabled": true,
        "userPanningEnabled": true,
        "pan": {
          "x": 0,
          "y": 0
        },
        "boxSelectionEnabled": true,
        "renderer": {
          "name": "canvas"
        }
      }
    }
  ],
  "selectedModelIndex": 0,
  "selectedElementId": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5"
}
""";
    //encode Map to JSON
    //   var body = json.encode(data);

    // final response = await http.post(uri,body);

    var response = await http.post(uri,
        headers: {"Content-Type": "application/json"},
        body: dataString
      //   var data = response.body;
      // print(data);

    );
    // String responseBody = response.body;
    // print(responseBody);

    print(response);
    print(response.body);
    String responseString = response.body;
    print(response.statusCode);
    print(responseString);
    //print(userModelFromJson(responseString));
    //return userModelFromJson(responseString);
  }

  Future createUserabc() async {
    var uri = Uri.parse('http://192.168.0.109:8080/json2');
    String data = """
    {
  "models": [
    {
      "edges": [
        {
          "id": "e5756858-6650-4e3c-91f1-0ae109502730",
          "name": "e_correctPin",
          "sourceVertexId": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5",
          "targetVertexId": "e1dc7056-e2b2-43c2-9684-0d33b5bcec2e"
        },
        {
          "id": "f6479bf0-b300-4890-886f-e082db6d117b",
          "name": "e_incorrect",
          "sourceVertexId": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5",
          "targetVertexId": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5"
        },
        {
          "id": "3d400628-0bd8-4aae-9954-85cd3ecee2d5",
          "name": "e_logout",
          "sourceVertexId": "e1dc7056-e2b2-43c2-9684-0d33b5bcec2e",
          "targetVertexId": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5"
        }
      ],
      "generator": "random(edge_coverage(100))",
      "id": "2c270a60-f5d7-4ab7-a44b-f71be8a38a4e",
      "name": "state Diagram 2",
      "startElementId": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5",
      "vertices": [
        {
          "id": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5",
          "name": "login_page",
          "properties": {
            "x": 252,
            "y": 191
          }
        },
        {
          "id": "e1dc7056-e2b2-43c2-9684-0d33b5bcec2e",
          "name": "home_page",
          "properties": {
            "x": 576,
            "y": 184
          }
        }
      ],
      "editor": {
        "elements": {
          "nodes": [
            {
              "data": {
                "id": "e1dc7056-e2b2-43c2-9684-0d33b5bcec2e",
                "name": "home_page",
                "color": "LightGreen"
              },
              "position": {
                "x": 566,
                "y": 232
              },
              "group": "nodes",
              "removed": false,
              "selected": false,
              "selectable": true,
              "locked": false,
              "grabbable": true,
              "pannable": false,
              "classes": ""
            },
            {
              "data": {
                "id": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5",
                "name": "login_page",
                "color": "LightGreen"
              },
              "position": {
                "x": 221,
                "y": 229
              },
              "group": "nodes",
              "removed": false,
              "selected": true,
              "selectable": true,
              "locked": false,
              "grabbable": true,
              "pannable": false,
              "classes": ""
            }
          ],
          "edges": [
            {
              "data": {
                "id": "e5756858-6650-4e3c-91f1-0ae109502730",
                "name": "correct pin",
                "source": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5",
                "target": "e1dc7056-e2b2-43c2-9684-0d33b5bcec2e",
                "color": "LightGreen"
              },
              "position": {
                "x": 0,
                "y": 0
              },
              "group": "edges",
              "removed": false,
              "selected": false,
              "selectable": true,
              "locked": false,
              "grabbable": true,
              "pannable": true,
              "classes": ""
            }
          ]
        },
        "style": [
          {
            "selector": "core",
            "style": {
              "active-bg-size": "0px"
            }
          },
          {
            "selector": "node",
            "style": {
              "label": "data(name)",
              "text-wrap": "wrap",
              "text-valign": "center",
              "text-halign": "center",
              "shape": "roundrectangle",
              "width": "label",
              "height": "label",
              "color": "rgb(0,0,0)",
              "background-color": "data(color)",
              "line-color": "data(color)",
              "padding": "10px"
            }
          },
          {
            "selector": "edge",
            "style": {
              "label": "data(name)",
              "text-wrap": "wrap",
              "curve-style": "bezier",
              "text-rotation": "autorotate",
              "target-arrow-shape": "triangle",
              "width": "4px",
              "line-color": "data(color)",
              "target-arrow-color": "data(color)",
              "background-color": "data(color)"
            }
          },
          {
            "selector": ":loop",
            "style": {
              "curve-style": "unbundled-bezier",
              "control-point-step-size": "60px"
            }
          },
          {
            "selector": ":selected",
            "style": {
              "border-width": "4px",
              "border-color": "rgb(0,0,0)",
              "line-color": "rgb(0,0,0)",
              "target-arrow-color": "rgb(0,0,0)"
            }
          }
        ],
        "data": {},
        "zoomingEnabled": true,
        "userZoomingEnabled": true,
        "zoom": 1,
        "minZoom": 1e-50,
        "maxZoom": 1e+50,
        "panningEnabled": true,
        "userPanningEnabled": true,
        "pan": {
          "x": 0,
          "y": 0
        },
        "boxSelectionEnabled": true,
        "renderer": {
          "name": "canvas"
        }
      }
    }
  ],
  "selectedModelIndex": 0,
  "selectedElementId": "53dd8abb-ddc0-43b1-ac1d-f93db26da2d5"
}
""";
    //encode Map to JSON
    //   var body = json.encode(data);

    // final response = await http.post(uri,body);

    var response = await http.post(uri,
        headers: {"Content-Type": "application/json"},
        body: data
      //   var data = response.body;
      // print(data);

    );
    print(response);
    print(response.body);
    final String responseString2 = response.body;
    print(response.statusCode);
    print(responseString2);
    //print(userModelFromJson(responseString));
    //return userModelFromJson(responseString);
  }

}

// class UserData {
//   final int id;
//   final String name;
//
//   UserData(this.id, this.name);
// }




// Future<UserModell> deleteUser(int? id) async {
//   // final String apiUrl='http://192.168.0.100:8090/todoAddd';
//   var uri = Uri.parse('http://192.168.0.107:8080/user/$id');
//   //final response = await http.delete(uri, body: {"name": name});
//   final response = await http.delete(uri);
//   // final response =await http.post(apiUrl,body:{"name":name});
//
//   print(response);
//   print(response.body);
//   final String responseString = response.body;
//   print(response.statusCode);
//   // print(responseString);
//   // print(userModelFromJson(responseString));
//   return userModelFromJson(responseString);
//   //return responseString;
// }
//
// Future getData() async {
//   var uri = Uri.http('192.168.0.107:8080', 'user');
//   final response = await http.get(uri);
//   print(response.body);
//   print(response.statusCode);
//
//   final String responseString = response.body;
//   UserModell userModelListt = userModelFromJson(responseString);
//   // print(userModelListt);
//   // return responseString;
//   print(userModelFromJson(responseString));
//   return userModelFromJson(responseString);
// }
//
// Future getDataList() async {
//   var uri = Uri.http('192.168.0.107:8080', 'user');
//   final response = await http.get(uri);
//   print(response.body);
//   final String responseString = response.body;
//   print(userModelListFromJson(responseString));
//   print(json.decode(response.body));
//   print(response.statusCode);
//   var jsonData = json.decode(response.body);
//   return (json.decode(response.body));
//   //return userModelListFromJson(responseString);
//
//   //return responseString;
// }
//
// Future getResponseCode() async {
//   var uri = Uri.http('192.168.0.107:8080', 'user');
//   final response = await http.get(uri);
//   print(response.body);
//   final String responseString = response.body;
//   print(userModelListFromJson(responseString));
//   print(json.decode(response.body));
//   print(response.statusCode);
//   var jsonData = json.decode(response.body);
//   return response.statusCode;
//   //return(json.decode(response.body));
//   //return userModelListFromJson(responseString);
//
//   //return responseString;
// }
//
// Future getUserDataNew() async {
//   var uri = Uri.http('192.168.0.107:8080', 'user');
//   var response = await http.get(uri);
//   var jsonData = jsonDecode(response.body);
//   List<UserData> userss = [];
//
//   for (var u in jsonData) {
//     UserData userr = UserData(u["id"], u["name"]);
//     userss.add(userr);
//   }
//   length = userss.length;
//   print(userss.length);
//   return userss;
// }
//
// Future getUserDataNeww() async {
//   var uri = Uri.http('192.168.0.107:8080', 'user');
//   var response = await http.get(uri);
//   var jsonData = jsonDecode(response.body);
//   // List<UserData> userss = [];
//   return jsonData;
// }
//
// Future createUserNew(int id, String name) async {
//   // final String apiUrl='http://192.168.0.100:8090/todoAddd';
//   String stringId = id.toString();
//   var uri = Uri.parse('http://192.168.0.104:8080/user');
//   var response = await http.post(uri, body: {
//     "id": stringId,
//     "name": name,
//   });
//   var jsonData = jsonDecode(response.body);
//   UserData userr = UserData(jsonData["id"], jsonData["name"]);
//   userss.add(userr);
//
//   return jsonData;
// }