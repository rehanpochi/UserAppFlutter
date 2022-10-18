// // To parse this JSON data, do
// //
// //     final userModel = userModelFromJson(jsonString);
//
// import 'dart:convert';
//
// UserModell userModelFromJson(String str) => UserModell.fromJson(json.decode(str));
//
// String userModelToJson(UserModell data) => json.encode(data.toJson());
//
// class UserModell {
//   UserModell({
//     this.id,
//     this.name,
//   });
//
//   int? id;
//   String? name;
//
//   factory UserModell.fromJson(Map<String, dynamic> json) => UserModell(
//     id: json["id"],
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//   };
// }
