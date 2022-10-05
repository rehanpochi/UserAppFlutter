// To parse this JSON data, do
//
//     final userModelList = userModelListFromJson(jsonString);

import 'dart:convert';

List<UserModelList> userModelListFromJson(String str) => List<UserModelList>.from(json.decode(str).map((x) => UserModelList.fromJson(x)));

String userModelListToJson(List<UserModelList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModelList {
  UserModelList({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory UserModelList.fromJson(Map<String, dynamic> json) => UserModelList(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
